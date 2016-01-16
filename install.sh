#!/bin/bash

GROUP=deeplearning
DIR=/deep/group/dq
D=$(cd `dirname $0` && pwd)

#if [ "x$1" = "x" ]; then
#    echo "Usage: sh# $0 <dir>"
#    echo "Example: sh# $0 /deep/group/dq"
#fi

#DIR=$1

function install_fix {
    SRC=$1; shift
    DST=$1; shift
    echo "#!$DIR/shell -p" > $SRC.fix
    tail -n +2 $SRC >> $SRC.fix
    install $SRC.fix $DST $@
    rm -f $SRC.fix
}

install $D/dq-on-all $DIR/dq-on-all -D -m 0755
install $D/dq-submit $DIR/dq-submit -D -m 0755
install $D/dq-prepare $DIR/dq-prepare -D -m 0755
install $D/dq-churn $DIR/dq-churn -D -m 0755
install $D/dq-jobs $DIR/dq-jobs -D -m 0755
install $D/dq-submit-backend $DIR/dq-submit-backend -D -m 0755
install $D/dq-submit-inner $DIR/dq-submit-inner -D -m 0755
install $D/dq-free $DIR/dq-free -D -m 0755
install $D/dq-users $DIR/dq-users -D -m 0755
install $D/dq-env.sh $DIR/dq-env.sh -D -m 0644
install $D/dq-env.csh $DIR/dq-env.csh -D -m 0644
install /bin/bash $DIR/shell -D -o root -g deeplearning -m 06550
install /usr/bin/screen $DIR/screen -D -o root -g deeplearning -m 06750
install $D/scripts/helper-on-all $DIR/scripts/helper-on-all -D -m 0755
install_fix $D/scripts/gpu-users $DIR/scripts/gpu-users -D -m 0755
install_fix $D/scripts/gpu-free $DIR/scripts/gpu-free -D -m 0755
install_fix $D/scripts/gpu-free-list $DIR/scripts/gpu-free-list -D -m 0755

chmod g+w $DIR
