FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/web_common/msg"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/web_common/msg/__init__.py"
  "../src/web_common/msg/_joint_states_web.py"
  "../src/web_common/msg/_min_max_joint.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
