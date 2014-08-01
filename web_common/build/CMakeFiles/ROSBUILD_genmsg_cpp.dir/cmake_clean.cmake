FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/web_common/msg"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/web_common/joint_states_web.h"
  "../msg_gen/cpp/include/web_common/min_max_joint.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
