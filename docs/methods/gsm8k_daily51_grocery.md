# 食料品袋を運ぶ往復回数

2人が各回3袋ずつ同時に運び、30袋を運び終える共同の回数を求める。

**取得済み固定GSM8Kの1問。**

- themの1 tripを2人が同時に車から家へ向かう1回と解釈する。

## grocery_capacity：共同1回の袋数

条件：2人がそれぞれ3袋を運ぶ。

根拠：

得られること：共同1回で6袋運べる。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.grocery_capacity`。

## grocery_trips：共同の回数

条件：30袋を1回6袋ずつ運ぶ。

根拠：

得られること：5回で運び終える。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.grocery_trips`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.grocery_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
