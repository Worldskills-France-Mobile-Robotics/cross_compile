# This Dockerfile describes a simple image with rosdep installed.
# When `run`, it outputs a script for installing dependencies for a given workspace
# Requirements:
#  * mount a colcon workspace at /ws
#  * see gather_rosdeps.sh for all-caps required input environment
FROM ros:humble

COPY gather_rosdeps.sh /root/
RUN mkdir -p /ws
WORKDIR /ws
ENTRYPOINT ["/root/gather_rosdeps.sh"]
