# Redefinable Structs
Redefining a struct in base julia requires restaring the julia process. This can incur significant recompilation time (though this is greatly reduced in Julia 1.9 and 1.10).
These packages allow users to define structs that are redefinable.  
ProtoStructs.jl and RedefStructsRedfineStructs.jl  

See also Revise.jl for a different approach to struct redefinition.
