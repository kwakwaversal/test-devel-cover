#!/usr/bin/env bash

rm -rf cover_db && rm cover_db.out
PERL5OPT=-MDevel::Cover=-coverage,pod-also_private-BUILD-DEMOLISH,statement,branch,condition,path,subroutine,pod,time prove -vwl t
cover -silent -summary +ignore_re 'prove$|\.t$' | tee cover_db.out
