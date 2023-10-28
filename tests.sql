Select '000', 1=1;

.load ./bson
Select '101', bson_get(x'160000000268656C6C6F0006000000776F726C640000', '') = '{ "hello" : "world" }';
Select '102', bson_to_json(x'160000000268656C6C6F0006000000776F726C640000') = '{ "hello" : "world" }';
Select '103', bson_get(x'160000000268656C6C6F0006000000776F726C640000', 'hello') = 'world';
Select '104', bson_get(x'160000000268656C6C6F0006000000776F726C640000', 'foo') is null;
