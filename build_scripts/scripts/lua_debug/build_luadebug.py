import subprocess
import os
import sys

deps_dir = sys.argv[1]
os.chdir(deps_dir)

subprocess.run(["git", "clone", "https://github.com/Slaweknowy/lua-debug"])
os.chdir("lua-debug")
subprocess.run(["git", "submodule", "init"])
subprocess.run(["git", "submodule", "update"])

def reset_to_commit(sha):
	subprocess.run(["git","fetch"],check=True)
	subprocess.run(["git","checkout",sha,"--recurse-submodules"],check=True)

reset_to_commit("cb69ef831298a62c8eaac278a8a1b05e839c2b74")

subprocess.run(["../luamake/luamake", "lua", "compile/download_deps.lua"])
subprocess.run(["../luamake/luamake", "-mode", "release"])
