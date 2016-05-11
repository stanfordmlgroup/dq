#!/bin/bash

GROUP=deeplearning
DIR=/deep/group/dq
D=$(cd `dirname $0` && pwd)

#if [ "x$1" = "x" ]; then
#    echo "Usage: sh# $0 <dir>"
#    echo "Example: sh# $0 /deep/group/dq"
#fi

#DIR=$1

install $D/dq-on-all $DIR/dq-on-all -D -m 0755
install $D/dq-submit $DIR/dq-submit -D -m 0755
install $D/dq-prepare $DIR/dq-prepare -D -m 0755
install $D/dq-churn $DIR/dq-churn -D -m 0755
install $D/dq-jobs $DIR/dq-jobs -D -m 0755
install $D/dq-kill $DIR/dq-kill -D -m 0755
install $D/dq-attach $DIR/dq-attach -D -m 0755
install $D/dq-logs $DIR/dq-logs -D -m 0755
install $D/dq-grep $DIR/dq-grep -D -m 0755
install $D/dq-tail $DIR/dq-tail -D -m 0755
install $D/dq-head $DIR/dq-head -D -m 0755
install $D/dq-grep $DIR/dq-grep -D -m 0755
install $D/dq-restart $DIR/dq-restart -D -m 0755
install $D/dq-keeptoken $DIR/dq-keeptoken -D -m 0755
install $D/dq-submit-backend $DIR/dq-submit-backend -D -m 0755
install $D/dq-submit-inner $DIR/dq-submit-inner -D -m 0755
install $D/dq-submit-cleanup $DIR/dq-submit-cleanup -D -m 0755
install $D/dq-free $DIR/dq-free -D -m 0755
install $D/dq-users $DIR/dq-users -D -m 0755
install $D/dq-env.sh $DIR/dq-env.sh -D -m 0644
install $D/dq-env.csh $DIR/dq-env.csh -D -m 0644
install /bin/bash $DIR/shell -D -o root -g $GROUP -m 06550
install $D/scripts/helper-on-all $DIR/scripts/helper-on-all -D -m 0755

chmod g+w $DIR
