# 冷蔵庫に入れたクッキー

Annaへの枚数をTimの2倍として求め、配った総数を256枚から引く。

**取得済み固定GSM8Kの1問。**

- 焼いた256枚はTim、Mike、Annaへ配った分と冷蔵庫に入れた分へ重複なく分かれる。

## cookies_anna：Annaへの枚数

条件：Timへ15枚、Annaへその2倍を渡す。

根拠：

得られること：Annaへ30枚渡した。

既習の根拠：倍の数量は元の数量に倍率を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.cookies_anna`。

## cookies_given：配った総数

条件：Timへ15枚、Mikeへ23枚、Annaへ30枚。

根拠：

得られること：配った合計は68枚。

既習の根拠：受取人別の互いに重ならない数量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.cookies_given`。

## cookies_fridge：冷蔵庫の枚数

条件：256枚から配った68枚を引く。

根拠：

得られること：冷蔵庫には188枚入れた。

既習の根拠：残量=全体量−取り出した量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.cookies_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.cookies_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
