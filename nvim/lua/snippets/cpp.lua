local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
  s("init_PS", {
    t({
      "#include <iostream>",
      "#include <algorithm>",
      "#include <vector>",
      "#define sync() \\",
      "\tios_base::sync_with_stdio(0); \\",
      "\tcin.tie(0)",
      '#define endl "\\n"',
      '#define ends " "',
      "#define all(x) (x).begin(), (x).end()",
      "using namespace std;",
      "",
      "typedef long long ll;",
      "typedef pair<int, int> pii;",
      "typedef pair<ll, ll> pll;",
      "typedef vector<int> vi;",
      "typedef vector<ll> vl;",
      "typedef vector<pii> vii;",
      "typedef vector<pll> vll;",
      "",
      "const int INF = 0x3f3f3f3f;",
      "const ll LINF = 0x3f3f3f3f3f3f3f3f;",
      "",
      "const int dx[] = {-1, 0, 1, 0};",
      "const int dy[] = {0, -1, 0, 1};",
      "",
      "int main() {",
      "\tsync();",
      "\t",
    }),
    i(0), -- 최종 커서 위치
    t({
      "",
      "\treturn 0;",
      "}",
    }),
  }),
})
