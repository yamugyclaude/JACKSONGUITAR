#!/bin/bash
# ================================================
# AX8 Tone Database — 사무실 환경 자동 세팅 스크립트
# Claude가 "사무실이야" 응답 시 자동 실행
# ================================================

set -e
REPO="git@github.com:yamugyclaude/JACKSONGUITAR.git"
TARGET="$HOME/JACKSONGUITAR"

echo ""
echo "🔧 사무실 환경 세팅 시작..."
echo "================================"

# 1. SSH 키 확인
echo ""
echo "[ 1/4 ] SSH 키 확인..."
if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
  echo "  → SSH 키 없음. 생성 중..."
  ssh-keygen -t ed25519 -C "yamugyclaude@github" -f "$HOME/.ssh/id_ed25519" -N ""
  echo ""
  echo "  ✅ SSH 키 생성 완료."
  echo "  ⚠️  아래 공개키를 https://github.com/settings/keys 에 등록해야 합니다:"
  echo ""
  cat "$HOME/.ssh/id_ed25519.pub"
  echo ""
  echo "  등록 완료 후 Enter를 눌러 계속..."
  read
else
  echo "  ✅ SSH 키 이미 존재."
fi

# 2. GitHub known_hosts 등록
echo ""
echo "[ 2/4 ] GitHub 연결 확인..."
ssh-keyscan github.com >> "$HOME/.ssh/known_hosts" 2>/dev/null
if ssh -T git@github.com 2>&1 | grep -q "successfully authenticated"; then
  echo "  ✅ GitHub SSH 연결 성공."
else
  echo "  ❌ GitHub SSH 연결 실패. 공개키가 등록됐는지 확인하세요."
  exit 1
fi

# 3. 레포 클론 또는 업데이트
echo ""
echo "[ 3/4 ] 레포 동기화..."
if [ -d "$TARGET/.git" ]; then
  echo "  → 이미 클론됨. 최신 상태로 업데이트..."
  cd "$TARGET" && git pull
  echo "  ✅ 업데이트 완료."
else
  echo "  → 레포 클론 중..."
  git clone "$REPO" "$TARGET"
  echo "  ✅ 클론 완료: $TARGET"
fi

# 4. 완료
echo ""
echo "[ 4/4 ] 세팅 완료!"
echo "================================"
echo ""
echo "  작업 폴더: $TARGET"
echo "  라이브 URL: https://yamugyclaude.github.io/JACKSONGUITAR/"
echo ""
echo "✅ 사무실 환경 준비됐습니다. 작업을 시작합니다."
echo ""
