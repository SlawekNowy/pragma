import scripts.shared
from sys import platform

scripts.shared.init_global_vars()
from scripts.shared import *

curDir = os.getcwd()

external_libs_dir = curDir +"/external_libs"
os.chdir(external_libs_dir)
get_submodule("alsoundsystem","https://github.com/Slaweknowy/alsoundsystem.git","6c4f0f7a1690bf8a3d68e6cb52103efccceb0458")
get_submodule("datasystem","https://github.com/Silverlan/datasystem.git","548db25f3cd011b651d1c55b481743a183cb0ef9")
get_submodule("iglfw","https://github.com/Silverlan/iglfw.git","a8aa55c6c7bd5dcb4b5f5a47dea1bef3cfb8983a")
get_submodule("luasystem","https://github.com/Silverlan/luasystem.git","3dea811544664e86b75e6b7902495ce141ca3859")
get_submodule("materialsystem","https://github.com/Silverlan/materialsystem.git","75ea37b8f4235bf293bbf7de0fee2fb814bbb02a")
get_submodule("mathutil","https://github.com/Silverlan/mathutil.git","554d67f7b621fe87fecea90269581c2ca50dadb9")
get_submodule("networkmanager","https://github.com/Silverlan/networkmanager.git","819eadb6f0f438d03e9ac9094ed5404c854528ef")
get_submodule("panima","https://github.com/Silverlan/panima.git","3a88b86688d46055b41c7ecc53890891a5d3cfc9")
get_submodule("prosper","https://github.com/Silverlan/prosper.git","de7e7ff0fb5d57b31ae92bf8342cd4d009d88a5f")
get_submodule("sharedutils","https://github.com/Slaweknowy/sharedutils.git","a74870c6415d8456db6d68b6d0fdcc6dc19a4ec2")
get_submodule("util_bsp","https://github.com/Silverlan/util_bsp.git","2d912cceaaa59199a86431aa9d194e922b2ebea4")
get_submodule("util_formatted_text","https://github.com/Silverlan/util_formatted_text.git","a60a430ed17897a1e5834b21b1f76051ca71051d")
get_submodule("util_image","https://github.com/Slaweknowy/util_image.git","5ca0f9c5d9dc2f464bd1c0eb18b62b61a8307fc6")
get_submodule("util_pad","https://github.com/Silverlan/util_pad.git","17b760636565502c82c751fb0243b455f1deb044")
get_submodule("util_pragma_doc","https://github.com/Silverlan/util_pragma_doc.git","88e85503b120f820143f6f4566e194b539297ffa")
get_submodule("util_smdmodel","https://github.com/Silverlan/util_smdmodel.git","10fb2d10eb62188c8b9639a62da646152277a748")
get_submodule("util_sound","https://github.com/Silverlan/util_sound.git","93b9389a36291dcf85d987a279ac4df7bf9aec78")
get_submodule("util_source2","https://github.com/Silverlan/util_source2.git","7060216021d4ad145e771b7e95744333170bcb12")
get_submodule("util_source_script","https://github.com/Silverlan/util_source_script.git","eb71bb79736ccc693832c98d69069f3ffbbcb897")
get_submodule("util_timeline_scene","https://github.com/Silverlan/util_timeline_scene.git","8cac3eae6f4bc892e2ea229a97261385651a90f6")
get_submodule("util_udm","https://github.com/Silverlan/util_udm.git","c78f0746bb65a3fcf39b91632ef69835d8d2c418")
get_submodule("util_versioned_archive","https://github.com/Silverlan/util_versioned_archive.git","479ded2208bb24421ba70777b570dd8fda05bdda")
get_submodule("util_vmf","https://github.com/Silverlan/util_vmf.git","6dedf4a8543544f1d8d4d2376b9b14cd1afd913a")
get_submodule("util_zip","https://github.com/Silverlan/util_zip.git","80bc70a6ec0d832bf56081f7d55d3dfd550dae51")
get_submodule("util_shadergraph","https://github.com/Silverlan/util_shadergraph.git","15231d501ca893d077c1a1de5cd173daf94fc1e5")
get_submodule("vfilesystem","https://github.com/Slaweknowy/vfilesystem.git","95a1cf1ac3027c646c2115019bb9b56d9365b90a")
get_submodule("wgui","https://github.com/Slaweknowy/wgui.git","6cf5622d65c8f13f3590c4a17f84be91651f9487")
get_submodule("util_unicode","https://github.com/Silverlan/util_unicode.git","5a0ac6c02f199e42d7d38d99231503cf42e26f8a")
get_submodule("cppbezierfit","https://github.com/Silverlan/cppbezierfit.git","f691045dfdb3313205a09ef4f460203be0a3152c")

os.chdir(curDir)
