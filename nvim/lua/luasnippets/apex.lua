local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node

luasnip.add_snippets("apex", {
  s("test", {
    t({ "/**" }),
    t(" * @description Test"),
    i(1),
    t({
      " **/",
      "@isTest",
      "public static void Test() {",
      "\tSystem.runAs(UtilsTest.getStandardUser()) {",
      "\t\tVTest.assertLogs();",
      "\t}",
      "}",
    }),
  }),
})
