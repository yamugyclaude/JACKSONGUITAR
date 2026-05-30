# 세션 작업 로그

## 마지막 작업 정보
- **날짜/시간**: 2026-05-30
- **장소**: 집
- **기기**: Axe-Fx II XL+ (Ares v2.0)

## 오늘 완료한 작업

### 인프라
- Supabase SDK CDN 오류 수정 (cdnjs 404 → jsdelivr)
- Supabase JWT anon key 수정 (publishable key 오류 수정)
- Supabase RLS 정책 추가 (INSERT, UPDATE, SELECT)
- 스토리지 경로 언더스코어 오류 수정 (_comp_fx2 → comp_fx2)
- 전체 25장 스크린샷 Supabase 업로드 완료
- Signal UI 리디자인 (모바일 하단탭바)
- FX DB 구조 완성 (컴프/드라이브/딜레이/리버브)
- 드래그 앤 드롭 업로드 기능
- 톤 일지 시스템 구축
- Karpathy 코딩 원칙 스킬 저장

### Andy Timmons 세팅 작업
- 기타 스펙 확정: Suhr Standard Serial #14712 (2011.05.06)
  - 바디: 알더 + 3/16 퀄트 메이플 탑
  - 픽업: JST DSH+ (브릿지) / JST ML=V63+ (넥/미들)
- DSH+ vs AT-1 픽업 비교 분석 완료
- Andy Timmons Fractal 설정 연구 (Yek's Drive Guide, Mesa 인터뷰, Forum)
- v1→v2→v3 피드백 루프 거쳐 기준 세팅 확정

### 확정된 Andy Timmons 기준 세팅 (v3 / 2026-05-30)
| 블록 | 파라미터 | 값 |
|---|---|---|
| Optical 1 | Comp | 3.5 |
| Optical 1 | Level | +3.0 dB |
| Tube Drv 3-Knob | Drive | 4.5 |
| Tube Drv 3-Knob | Tone | 6.0 |
| Tube Drv 3-Knob | Level | 7.0 |
| T808 OD | Drive | 2.0 |
| T808 OD | Level | 7.0 |
| TX Star Clean | Bass | 2.5 |
| TX Star Clean | Mid | 6.0 |
| TX Star Clean | Treble | 6.5 |
| TX Star Clean | Presence | 5.5 |
| TX Star Clean Dynamics | Pick Attack | 10% |
| Dual Delay | Time L | 375ms |
| Dual Delay | Time R | 500ms |
| Small Spring | Time | 1.5sec |
| Small Spring | Size | 28 |
| Small Spring | Mix | 12% |
| 기타 볼륨 노브 | - | 7~8 (베이스라인) |

### Andy 볼륨 노브 기법 (2026-05-30 확인)
- 볼륨 7~8 = 리듬/클린 베이스라인
- 볼륨 10 = 솔로 부스트 (Tube Driver가 더 세게 밀림)
- "I'm on the volume control a lot for different phrases" (Mesa 인터뷰)
- 2024 That Pedal Show: Fractal 8개 씬으로 구성

## 다음에 할 작업
- [ ] Fractal 씬 구성 (씬1 클린 / 씬2 미드부스트 / 씬3 리드 / 씬4 풀드라이브)
- [ ] TX Star Lead 앰프 파라미터 세팅
- [ ] Friedman HBE 앰프 (AX8) 스크린샷 + 파라미터
- [ ] Nick Johnston, John Mayer 세팅 작업
- [ ] AX8 FX DB 타입 목록 스크린샷

---

## 로그 히스토리

| 날짜 | 장소 | 주요 작업 |
|---|---|---|
| 2026-05-30 | 집 | 전체 시스템 구축, Andy Timmons v3 기준 세팅 확정 |
