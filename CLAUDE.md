# AX8 Tone Database — Claude 작업 컨텍스트

---

## 🔴 세션 시작 시 항상 먼저 할 것

**매 세션 첫 번째 행동으로 반드시 아래 질문을 한다:**

> "집이야, 사무실이야?"

- **집** → 이미 세팅 완료. 바로 작업 진행.
- **사무실** → `setup_office.sh` 스크립트 자동 실행하여 환경 세팅 후 작업 진행.

---

## 프로젝트 개요
Fractal AX8 / Axe-Fx II XL+ 앰프 파라미터 스크린샷을 업로드하고 텍스트로 정리하는 웹 데이터베이스.

## 라이브 URL
https://yamugyclaude.github.io/JACKSONGUITAR/

## 레포지토리
- GitHub: `yamugyclaude/JACKSONGUITAR`
- Remote: `git@github.com:yamugyclaude/JACKSONGUITAR.git`
- 배포: GitHub Pages (main branch / root)

## 장비
| 기기 | 용도 | 펌웨어 | 앰프 모델링 |
|---|---|---|---|
| AX8 | 라이브 | FW 10.01 | Quantum |
| Axe-Fx II XL+ | 레코딩 | Ares v2.0 | Ares |

> 같은 파라미터값이어도 두 기기는 알고리즘이 달라 소리가 다름

## Supabase
- Project URL: `https://eujgcxoykqhvpqlkfpnl.supabase.co`
- Publishable Key: `sb_publishable__r4C0o-5gHX_TjoVAXzVhQ_UQUBQi97`
- Storage Bucket: `ax8-screenshots`

## 앰프 목록 및 현황
| 앰프 | 아티스트 | 기기 | 스크린샷 | 파라미터 |
|---|---|---|---|---|
| Friedman HBE | Nick Johnston | AX8 | ❌ | ❌ |
| Dirty Shirley | Nick Johnston | AX8 | ❌ | ❌ |
| Two Stone J35 | John Mayer | AX8 | ❌ | ❌ |
| Deluxe Verb Nrm | John Mayer | AX8 | ❌ | ❌ |
| TX Star Clean | Andy Timmons | Axe-Fx II XL+ (Ares v2.0) | ✅ | ✅ |
| TX Star Lead | Andy Timmons | Axe-Fx II XL+ (Ares v2.0) | ❌ | ❌ |

## 파일 구조
```
JACKSONGUITAR/
├── index.html              ← 웹페이지 (단일 파일, 모든 기능 포함)
├── CLAUDE.md               ← 이 파일 (Claude 컨텍스트)
├── 기록.md                  ← 상세 작업 기록
└── screenshots/
    └── tx_star_clean/      ← 앰프별 PNG 8장
        ├── basic.png
        ├── geq.png
        ├── preamp.png
        ├── power_amp.png
        ├── power_sply.png
        ├── speaker.png
        ├── spkr_drv.png
        └── dynamics.png
```

## 스크린샷 파일명 규칙
`basic.png` / `geq.png` / `preamp.png` / `power_amp.png` / `power_sply.png` / `speaker.png` / `spkr_drv.png` / `dynamics.png`

## 새 앰프 파라미터 추가 작업 순서
1. 사용자가 스크린샷 PNG 8장을 `screenshots/{앰프폴더명}/` 에 저장
2. Claude가 PNG 읽기 → 파라미터 추출
3. `index.html` 의 `PARAM_DATA` 객체에 해당 앰프 데이터 추가
4. `CLAUDE.md` 와 `기록.md` 현황 업데이트
5. `git add . && git commit -m "메시지" && git push`

## index.html 핵심 구조
- `PARAM_DATA` 객체: 앰프별 파라미터 데이터 (JS)
- `STATIC_IMAGES` 객체: 레포에 번들된 스크린샷 경로
- `AMPS` 배열: 앰프 ID 목록
- `PAGES` 배열: 8개 페이지명
- 테마: localStorage에 저장, `--accent` / `--bg` 등 CSS 변수로 제어

## 배포 명령어
```bash
git add . && git commit -m "메시지" && git push
```

## 새 컴퓨터 세팅 방법
```bash
git clone git@github.com:yamugyclaude/JACKSONGUITAR.git
cd JACKSONGUITAR
# → 바로 작업 가능. SSH 키가 없으면 아래 참고.
```

### SSH 키 없을 때 (새 컴퓨터)
```bash
ssh-keygen -t ed25519 -C "yamugyclaude@github"
cat ~/.ssh/id_ed25519.pub
# → 출력된 키를 https://github.com/settings/keys 에 등록
```
