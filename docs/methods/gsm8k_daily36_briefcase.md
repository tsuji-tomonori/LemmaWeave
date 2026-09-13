# 鞄・書類・ノートPCの重量関係を解く

トート8ポンドと、空・満杯のブリーフケース、内容物の6分の1の書類という関係からPCがトートより何ポンド重いか求める。

**取得済み固定GSM8Kの1問。**

- 満杯重量は空のケース、PC、書類の和。内容物はPCと書類だけとする。

## briefcase_case_weights：空と満杯のケース重量を求める

条件：トート8ポンドは空ケースの2倍、満杯ケースはトートの2倍。

根拠：

得られること：空ケース4ポンド、満杯ケース16ポンド。

既習の根拠：倍数関係を逆算・計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.briefcase_case_weights`。

## briefcase_contents：内容物の重量を求める

条件：満杯重量は空ケースと内容物の和。

根拠：

得られること：内容物は12ポンド。

既習の根拠：16-4を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.briefcase_contents`。

## briefcase_papers_laptop：書類とPCの重量を分ける

条件：書類は内容物12ポンドの6分の1で、残りがPC。

根拠：

得られること：書類2ポンド、PC10ポンド。

既習の根拠：12÷6と12-2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.briefcase_papers_laptop`。

## briefcase_difference：トートとの差を求める

条件：PC10ポンドとトート8ポンドを比較する。

根拠：

得られること：PCの方が2ポンド重い。

既習の根拠：10-8を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.briefcase_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.briefcase_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
