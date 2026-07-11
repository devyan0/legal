#!/bin/bash
# 새 앱의 terms/privacy 페이지 생성
# 사용: ./new-app.sh <slug> "<App Name>"
# 생성 후 {{DATA_COLLECTED}}, {{CONTENT_CLAUSE}} 블록을 앱에 맞게 수정할 것.
set -euo pipefail

SLUG="$1"; APP_NAME="$2"
DIR="$(cd "$(dirname "$0")" && pwd)"
DATE=$(date +"%B %-d, %Y")

mkdir -p "$DIR/$SLUG"
for doc in terms privacy; do
  sed -e "s/{{APP_NAME}}/$APP_NAME/g" \
      -e "s/{{DATE}}/$DATE/g" \
      -e "s/{{DEVELOPER_NAME}}/devyan0/g" \
      -e "s|{{CONTACT_URL}}|https://github.com/devyan0|g" \
      -e "s/{{CONTACT_LABEL}}/github.com\/devyan0/g" \
      "$DIR/_template/$doc.html" > "$DIR/$SLUG/$doc.html"
done
echo "✅ $SLUG/terms.html, $SLUG/privacy.html 생성"
echo "   → {{DATA_COLLECTED}} / {{CONTENT_CLAUSE}} 블록을 채우고 push"
echo "   URL: https://devyan0.github.io/legal/$SLUG/privacy.html"
