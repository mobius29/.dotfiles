local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node

return {
  s("init_PS", {
    t("#include <iostream>\n"),
    t("#include <algorithm>\n"),
    t("#include <vector>\n"),
    t("#define sync()                                                                 \\\n"),
    t("\tios_base::sync_with_stdio(0);                                               \\\n"),
    t("\tcin.tie(0)\n"),
    t('#define endl "\n"\n'),
    t('#define ends " "\n'),
    t("#define all(x) (x).begin(), (x).end()\n"),
    t("using namespace std;\n"),
    t("\n"),
    t("typedef long long ll;\n"),
    t("typedef pair<int, int> pii;\n"),
    t("typedef pair<ll, ll> pll;\n"),
    t("typedef vector<int> vi;\n"),
    t("typedef vector<ll> vl;\n"),
    t("typedef vector<pii> vii;\n"),
    t("typedef vector<pll> vll;\n"),
    t("\n"),
    t("const int INF = 0x3f3f3f3f;\n"),
    t("const ll LINF = 0x3f3f3f3f3f3f3f3f\n"),
    t("\n"),
    t("const int dx[] = {-1, 0, 1, 0};\n"),
    t("const int dy[] = {0, -1, 0, 1};\n"),
    t("\n"),
    t("int main() {\n"),
    t("\tsync()\n"),
    t("\t$0\n"),
    t("\treturn 0;\n"),
    t("}"),
  }),
}
