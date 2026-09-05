# 사용자문서 영문/폴란드어 번역 및 빌드 방법
1. 국문 rst 파일 수정 후 po 파일 갱신
	1.  `make gettext`
	2. `sphinx-intl update -p docs/gettext -l en` (폴란드어는 `-l pl`)
	3. `locales/en/LC_MESSAGES/` 에 한글문서에 맞춰  `.po` 파일 갱신됨 (폴란드어는 `locales/pl/LC_MESSAGES/`)
2. 각 rst 문서별로 생긴 `.po` 파일 열어서 `msgstr`에 영문(또는 폴란드어) 번역
3. 번역 문서용 이미지 업로드
	* 이미지 파일명으로 끝에 `.en`(영문) 또는 `.pl`(폴란드어)을 넣으면 해당 언어 문서 이미지로 삽입됨
4. HTML로 빌드하기
	* 국문/영문/폴란드어 문서 동시 빌드하기
		1. `make all`
		2. 빌드된 HTML 문서 위치
			* 한글문서 `docs/`
			* 영문  `docs/en/`
			* 폴란드어 `docs/pl/`
	* (필요한 경우) 특정 언어만 빌드하기
		* 영문: `sphinx-build -b html -D language=en . docs/en` 또는 `make en`
		* 폴란드어: `sphinx-build -b html -D language=pl . docs/pl` 또는 `make pl`

