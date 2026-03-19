#!/bin/bash
# NotebookLM Proxy Script
# 用于通过代理调用NotebookLM API

# 配置
NOTEBOOKLM_DIR="${NOTEBOOKLM_DIR:-$HOME/.openclaw/workspace/skills/notebooklm-skill}"
SCRIPTS_DIR="$NOTEBOOKLM_DIR/scripts"

# 代理配置
PROXY_HOST="${PROXY_HOST:-127.0.0.1}"
PROXY_PORT="${PROXY_PORT:-1080}"
PROXY_TYPE="${PROXY_TYPE:-socks5}"

# 颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# 设置代理
export http_proxy="${PROXY_TYPE}://${PROXY_HOST}:${PROXY_PORT}"
export https_proxy="${PROXY_TYPE}://${PROXY_HOST}:${PROXY_PORT}"

function help() {
    echo "NotebookLM Proxy Script"
    echo ""
    echo "Usage: $0 <command> [options]"
    echo ""
    echo "Commands:"
    echo "  list                          List all notebooks"
    echo "  create <name>                Create a new notebook"
    echo "  delete <notebook_id>        Delete a notebook"
    echo "  source list <notebook_id>    List sources in a notebook"
    echo "  source add <notebook_id> <url> [url2] ...  Add sources to notebook"
    echo "  ask <notebook_id> <question> Ask a question to notebook"
    echo "  ask-url <url> <question>     Ask a question using notebook URL"
    echo "  auth                         Check authentication status"
    echo ""
    echo "Examples:"
    echo "  PROXY_PORT=7890 $0 list"
    echo "  $0 create \"My Research\""
    echo "  $0 ask \$NOTEBOOK_ID \"What is this paper about?\""
    echo "  $0 ask-url \"https://notebooklm.google.com/notebook/xxx\" \"核心算法是什么?\""
}

function cmd_list() {
    echo -e "${GREEN}📚 Listing notebooks...${NC}"
    cd "$SCRIPTS_DIR" && PYTHONPATH=. python3 notebook_manager.py list
}

function cmd_create() {
    local name="$1"
    if [ -z "$name" ]; then
        echo -e "${RED}Error: Notebook name required${NC}"
        exit 1
    fi
    echo -e "${GREEN}📝 Creating notebook: $name${NC}"
    cd "$SCRIPTS_DIR" && PYTHONPATH=. python3 notebook_manager.py create --name "$name"
}

function cmd_delete() {
    local notebook_id="$1"
    if [ -z "$notebook_id" ]; then
        echo -e "${RED}Error: Notebook ID required${NC}"
        exit 1
    fi
    echo -e "${RED}🗑️  Deleting notebook: $notebook_id${NC}"
    cd "$SCRIPTS_DIR" && PYTHONPATH=. python3 notebook_manager.py delete --notebook-id "$notebook_id"
}

function cmd_source_list() {
    local notebook_id="$1"
    if [ -z "$notebook_id" ]; then
        echo -e "${RED}Error: Notebook ID required${NC}"
        exit 1
    fi
    echo -e "${GREEN}📄 Listing sources in $notebook_id${NC}"
    cd "$SCRIPTS_DIR" && PYTHONPATH=. python3 notebook_manager.py sources --notebook-id "$notebook_id"
}

function cmd_source_add() {
    local notebook_id="$1"
    shift
    local urls=("$@")
    
    if [ -z "$notebook_id" ] || [ ${#urls[@]} -eq 0 ]; then
        echo -e "${RED}Error: Notebook ID and at least one URL required${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}➕ Adding sources to notebook: $notebook_id${NC}"
    cd "$SCRIPTS_DIR" && PYTHONPATH=. python3 notebook_manager.py add-source --notebook-id "$notebook_id" "${urls[@]}"
}

function cmd_ask() {
    local notebook_id="$1"
    shift
    local question="$*"
    
    if [ -z "$notebook_id" ] || [ -z "$question" ]; then
        echo -e "${RED}Error: Notebook ID and question required${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}❓ Asking: $question${NC}"
    cd "$SCRIPTS_DIR" && PYTHONPATH=. python3 ask_question.py --notebook-id "$notebook_id" --question "$question"
}

function cmd_ask_url() {
    local url="$1"
    shift
    local question="$*"
    
    if [ -z "$url" ] || [ -z "$question" ]; then
        echo -e "${RED}Error: Notebook URL and question required${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}❓ Asking (via URL): $question${NC}"
    cd "$SCRIPTS_DIR" && PYTHONPATH=. python3 ask_question.py --notebook-url "$url" --question "$question"
}

function cmd_auth() {
    echo -e "${GREEN}🔐 Authentication Status:${NC}"
    cd "$SCRIPTS_DIR" && PYTHONPATH=. python3 auth_manager.py status
}

# 主命令处理
case "$1" in
    list)
        cmd_list "${@:2}"
        ;;
    create)
        cmd_create "${@:2}"
        ;;
    delete)
        cmd_delete "${@:2}"
        ;;
    source)
        case "$2" in
            list)
                cmd_source_list "${@:3}"
                ;;
            add)
                cmd_source_add "${@:3}"
                ;;
            *)
                echo -e "${RED}Unknown source command: $2${NC}"
                help
                exit 1
                ;;
        esac
        ;;
    ask)
        notebook_id="$2"
        question="${*:3}"
        cmd_ask "$notebook_id" "$question"
        ;;
    ask-url)
        url="$2"
        question="${*:3}"
        cmd_ask_url "$url" "$question"
        ;;
    auth)
        cmd_auth
        ;;
    -h|--help|help)
        help
        ;;
    *)
        echo -e "${RED}Unknown command: $1${NC}"
        help
        exit 1
        ;;
esac
