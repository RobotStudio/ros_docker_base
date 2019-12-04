FROM osrf/ros:eloquent-desktop

RUN useradd -ms /bin/zsh -G users,sudo,audio,video,tty ros

USER ros
WORKDIR /home/ros

RUN mkdir workspace
RUN sh -c "echo 'source /opt/ros/eloquent/setup.bash' >> /home/ros/.bashrc"


