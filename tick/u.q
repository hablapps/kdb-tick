/2019.06.17 ensure sym has g attr for schema returned to new subscriber
/2008.09.09 .k -> .q
/2006.05.08 add

\d .u
init:{w::(t::tables`.)!()}

del:{w[x]_:w[x;;0]?y};.z.pc:{del[;x]each t};

sel:{(select from x where sym in y;x)`~y}

pub:{[t;x]{[t;x:sel[;w 1];w]if[count x;(neg first w)(`upd;t;x)]}[t;x]each w t}

add:{$[(count w x)>i:w[x;;0]?.z.w;.[`.u.w;(x;i;1);union;y];w[x],:enlist(.z.w;y)];(x;$[99=type v:value x;sel[v]y;@[0#v;`sym;`g#]])}

sub:{[x:{$[not x in t,`;'x;x]};y]if[x~`;:sub[;y]each t];del[x].z.w;add[x;y]}

end:{(neg union/[w[;;0]])@\:(`.u.end;x)}
