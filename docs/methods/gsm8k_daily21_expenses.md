# 年間支出の増加額

家賃、食費、自動車保険の各月額変化から年間の支出増加額を求める。

**取得済み固定GSM8Kの1問。**

- 各費目は月額で、今年の増額が12か月続く。保険は旧額の3倍なので増加額は新旧差である。

## expenses_rent：家賃の月額増分

条件：昨年の月額1000ドルが30%増える。

根拠：

得られること：月額増分は1000×30/100=300ドル。

既習の根拠：百分率による増加額。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.expenses_rent`。

## expenses_food：食費の月額増分

条件：昨年の月額200ドルが50%増える。

根拠：

得られること：月額増分は200×50/100=100ドル。

既習の根拠：百分率による増加額。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.expenses_food`。

## expenses_new_insurance：今年の保険料

条件：昨年の月額100ドルが3倍になる。

根拠：

得られること：今年の月額保険料は300ドル。

既習の根拠：倍率による新しい量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.expenses_new_insurance`。

## expenses_insurance：保険料の月額増分

条件：新額300ドルと旧額100ドルを比較する。

根拠：

得られること：保険料の月額増分は200ドル。

既習の根拠：増加額=新額−旧額。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.expenses_insurance`。

## expenses_monthly：月間の総増分

条件：家賃300、食費100、保険200ドルの増分を合算する。

根拠：

得られること：月間の総増分は600ドル。

既習の根拠：同じ月単位の量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.expenses_monthly`。

## expenses_annual：年間の総増分

条件：月間増分600ドルが12か月続く。

根拠：

得られること：答えは600×12=7200ドル。

既習の根拠：年間量=月額×12。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.expenses_annual`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.expenses_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
