# You can add custom Pragma modules here.
# Examples:

from sys import platform
# Add module from repository:
# add_pragma_module(
#     name = "pr_opencv",
#     repositoryUrl = "https://github.com/Silverlan/pr_opencv.git",
#     commitSha = None,
#     branch = None
# )

# Add module that was locally installed (should be located under pragma/modules/<moduleName>):
# add_pragma_module(
#     name = "pr_opencv"
# )


add_pragma_module(
     name = "pr_mount_external"
)
if platform == "win32":
     add_pragma_module(
          name = "pr_luadoc"
     )
