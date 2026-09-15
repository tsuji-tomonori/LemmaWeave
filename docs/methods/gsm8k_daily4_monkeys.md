# 2種類の山のバナナを合計し均等分配する

10山中6山は各9房・各房14本、残りは各12房・各房9本。12匹で均等に分ける。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- pilesを山、handsを房として、各階層の個数を乗算し、バナナに余りなく12等分する。

## monkeys_remaining_piles：残りの山数

条件：全10山のうち6山が第1種類。

根拠：

得られること：残りは10-6=4山。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.monkeys_remaining_piles`。

## monkeys_first：第1種類のバナナ

条件：6山に各9房、各房14本。

根拠：

得られること：6×9×14=756本。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.monkeys_first`。

## monkeys_remaining：残りの山のバナナ

条件：残り4山に各12房、各房9本。

根拠：

得られること：4×12×9=432本。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.monkeys_remaining`。

## monkeys_total：バナナ総数

条件：2種類の756本と432本を合計する。

根拠：

得られること：総数は1188本。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.monkeys_total`。

## monkeys_each：1匹当たり

条件：1188本を12匹で均等に分ける。

根拠：

得られること：1匹当たり99本。

既習の根拠：中学校までの除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.monkeys_each`。

## monkeys_divides：余りの確認

条件：12匹に99本ずつ配る。

根拠：

得られること：12×99=1188で余りなく全量に一致する。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.monkeys_divides`。

## monkeys_exists：条件の充足

条件：残り4山、各群756本と432本、総数1188本、1匹99本。

根拠：

得られること：山・房・本数・均等分配の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.monkeys_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.monkeys_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
