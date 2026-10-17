# legal — 앱 약관/개인정보처리방침 호스팅

devyan0 앱들의 Terms of Service / Privacy Policy를 GitHub Pages로 서빙한다.

- URL 패턴: `https://devyan0.github.io/legal/<slug>/{terms,privacy}.html`
- 새 앱 추가: `./new-app.sh <slug> "<App Name>"` → 생성된 페이지의
  `{{DATA_COLLECTED}}`(수집 데이터), `{{CONTENT_CLAUSE}}`(콘텐츠 조항) 블록 수정 →
  `index.html`에 한 줄 추가 → commit & push (Pages 자동 배포)
- 연락처를 이메일로 바꾸려면 `new-app.sh`의 CONTACT_URL/CONTACT_LABEL 수정

## Callove 日本語（2026-10-17）

`callove/terms-ja.html`・`privacy-ja.html`・`support-ja.html` are Japanese versions of the existing policies/support content. App language routing uses these explicit URLs; internal policy links stay in Japanese. Policy terms, retention windows and purchase conditions were preserved. The Korean/Japanese privacy §10 now explicitly scopes the no-IDFA analytics description to Amplitude, consistent with existing §1 Meta disclosure (no SDK/data-collection change). Japanese mobile wrapping and all internal links checked at 390px. Account deletion's separate web page remains the original language and its link says so.
