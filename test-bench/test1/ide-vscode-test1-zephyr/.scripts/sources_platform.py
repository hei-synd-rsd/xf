import os

Import("env")

print("Calling 'platform' source import script...")

# For test builds, exclude the platform trace.cpp to use test trace instead
src_filter = []
if "test" in str(env["PIOENV"]):
    src_filter = ["+<*>", "-<board/trace.cpp>"]

env.BuildSources(
    variant_dir=os.path.join("$BUILD_DIR", "external", "build", "platform"),
    src_dir=os.path.join("$PROJECT_DIR", "../../../src/platform/f7-disco-zephyr"),
    src_filter=src_filter if src_filter else None
)
