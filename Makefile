build:
	docker build -t tdb/centos.xfce.vnc -f Dockerfile.centos.xfce.vnc .

# standard version, standard user
run:
	docker run -d -p 5901:5901 -p 6901:6901 consol/centos-xfce-vnc

# latest version, standard user
run-latest:
	docker run -d -p 5901:5901 -p 6901:6901 tdb/centos.xfce.vnc

# latest version, super user
broot:
	docker run -d -user 0 -p 5901:5901 -p 6901:6901 tdb/centos.xfce.vnc

merge:
	echo "MERGING BRANCHES INTO LATEST";  \
	git checkout latest;	\
	git merge feature/add-git-to-centos-xfce;	\
	git merge feature/update-ff;	\
	git merge intellij;
