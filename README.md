`docker run \
-ti \
--rm \
-v $HOME/.ssh/authorized_keys:/authorized_keys:ro \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-h docker \
-p 49158:22 \
sykuang/archlinux-ssh-x11`
