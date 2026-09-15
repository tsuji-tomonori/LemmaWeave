# コンサート券購入後の貯金

VIP券と通常券を枚数×単価で計算し、購入費合計を500ドルから除く。

**取得済み固定GSM8Kの1問。**

- 購入費以外の支出はなく、貯金500ドルから券代を支払う。

## concert_ticket_totals：券種別の代金

条件：VIP券2枚は各100ドル、通常券3枚は各50ドル。

根拠：

得られること：VIP券は200ドル、通常券は150ドル。

既習の根拠：各券種で枚数×単価を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.concert_ticket_totals`。

## concert_remaining：購入費と残金

条件：券代は200+150ドル、貯金は500ドル。

根拠：

得られること：購入費350ドル、残金150ドル。

既習の根拠：券種別代金を加え、全体から差し引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.concert_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.concert_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
