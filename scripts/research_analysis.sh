#!/bin/bash
# Research Analysis Script
# 用于自动化论文分析流程

# 配置
PAPERS_DIR="${PAPERS_DIR:-$HOME/spatial_agi/papers}"
SCRIPTS_DIR="$(cd "$(dirname "$0")" && pwd)"

# 颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

function help() {
    echo "Research Analysis Script"
    echo ""
    echo "Usage: $0 <paper_title> <arxiv_url> <pdf_url> [github_url]"
    echo ""
    echo "示例:"
    echo "  $0 \\"
    echo "    'SPATIALALIGN: Aligning Dynamic Spatial Relationships' \\"
    echo "    'https://arxiv.org/abs/2602.22745' \\"
    echo "    'https://arxiv.org/pdf/2602.22745' \\"
    echo "    'https://github.com/xxx/spatialalign'"
    echo ""
    echo "环境变量:"
    echo "  PAPERS_DIR   论文保存目录 (default: ~/spatial_agi/papers)"
    echo "  PROXY_HOST   代理主机 (default: 127.0.0.1)"
    echo "  PROXY_PORT   代理端口 (default: 1080)"
    echo "  PROXY_TYPE   代理类型 (default: socks5)"
}

# 检查依赖
function check_deps() {
    echo -e "${BLUE}🔍 检查依赖...${NC}"
    
    if ! command -v python3 &> /dev/null; then
        echo -e "${RED}❌ Python3 未安装${NC}"
        exit 1
    fi
    
    # 检查notebooklm CLI
    if ! command -v notebooklm &> /dev/null; then
        echo -e "${YELLOW}⚠️  notebooklm CLI 未安装${NC}"
        echo -e "${YELLOW}   请先安装: pip install notebooklm${NC}"
        echo -e "${YELLOW}   或者使用网页版: https://notebooklm.google.com${NC}"
    else
        echo -e "${GREEN}✅ notebooklm CLI 已安装${NC}"
    fi
    
    # 检查代理
    echo -e "${BLUE}🔍 检查代理配置...${NC}"
    PROXY_HOST="${PROXY_HOST:-127.0.0.1}"
    PROXY_PORT="${PROXY_PORT:-1080}"
    echo -e "${GREEN}✅ 代理: ${PROXY_TYPE:-socks5}://${PROXY_HOST}:${PROXY_PORT}${NC}"
    
    # 创建目录
    mkdir -p "$PAPERS_DIR"
    echo -e "${GREEN}✅ 论文目录: $PAPERS_DIR${NC}"
}

# 搜索论文
function search_papers() {
    local query="$1"
    local max_results="${2:-20}"
    
    echo -e "${GREEN}🔍 搜索论文: $query${NC}"
    python3 "$SCRIPTS_DIR/search_arxiv.py" "$query" --max "$max_results"
}

# 创建NotebookLM笔记本
function create_notebook() {
    local name="$1"
    
    echo -e "${GREEN}📓 创建NotebookLM笔记本: $name${NC}"
    
    if command -v notebooklm &> /dev/null; then
        notebooklm create "$name"
    else
        echo -e "${YELLOW}⚠️  请手动创建: https://notebooklm.google.com${NC}"
        echo -e "${YELLOW}   创建后请记录笔记本ID${NC}"
    fi
}

# 添加来源
function add_sources() {
    local notebook_id="$1"
    shift
    local urls=("$@")
    
    echo -e "${GREEN}➕ 添加来源到笔记本...${NC}"
    
    if command -v notebooklm &> /dev/null; then
        notebooklm source add "$notebook_id" "${urls[@]}"
    else
        echo -e "${YELLOW}⚠️  请手动添加来源:${NC}"
        for url in "${urls[@]}"; do
            echo "  - $url"
        done
    fi
}

# 询问问题
function ask_question() {
    local notebook_id="$1"
    local question="$2"
    
    echo -e "${GREEN}❓ $question${NC}"
    
    if command -v notebooklm &> /dev/null; then
        notebooklm ask -n "$notebook_id" "$question"
    else
        echo -e "${YELLOW}⚠️  请在NotebookLM中手动提问${NC}"
    fi
}

# 生成文档
function generate_doc() {
    local title="$1"
    local arxiv_url="$2"
    local pdf_url="$3"
    local github_url="$4"
    
    # 生成文件名
    local date=$(date +%Y-%m-%d)
    local safe_title=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')
    local filename="${date}_${safe_title}.md"
    
    echo -e "${GREEN}📝 生成文档: $filename${NC}"
    
    cat > "$PAPERS_DIR/$filename" << EOF
# $title

## 基本信息

- **标题**: $title
- **arXiv**: $arxiv_url
- **PDF**: $pdf_url
$(if [ -n "$github_url" ]; then echo "- **GitHub**: $github_url"; fi)
- **分析日期**: $(date +%Y-%m-%d)

## 核心问题回答

### Q1: 核心算法原理

（NotebookLM回答）

### Q2: 与Spatial AGI的关系

（NotebookLM回答）

### Q3: 自由问题

（NotebookLM回答）

## 个人思考

-

## 实验结果

-

## 潜在应用

-

## 与Spatial AGI的关系

-

## 延伸问题

-

EOF

    echo -e "${GREEN}✅ 文档已保存: $PAPERS_DIR/$filename${NC}"
}

# 主流程
function main() {
    if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
        help
        exit 0
    fi
    
    if [ $# -lt 2 ]; then
        help
        exit 1
    fi
    
    check_deps
    
    local title="$1"
    local arxiv_url="$2"
    local pdf_url="$3"
    local github_url="${4:-}"
    
    echo -e "${BLUE}========================================${NC}"
    echo -e "${BLUE}  开始分析论文: $title${NC}"
    echo -e "${BLUE}========================================${NC}"
    
    # 生成文档
    generate_doc "$title" "$arxiv_url" "$pdf_url" "$github_url"
    
    echo -e "${GREEN}✅ 分析完成！${NC}"
    echo -e "${GREEN}📄 文档位置: $PAPERS_DIR${NC}"
}

main "$@"
