@import <Foundation/CPDictionary.j>

@implementation CPDictionary (JSLiteralKit)

- (JSObject)toJSObject
{
	// print([[self class] description] + " (" + [self description] + "): - (JSObject)toJSObject");
	var result = {};
	[self enumerateKeysAndObjectsUsingBlock: (function (key, object) { result[[key toJSObject]] = [object toJSObject]; })];
	return result;
}


+ (CPObject)fromJSObject:(JSObject)obj
{
	var result = [[CPDictionary alloc] init];
    for(var key in obj) {
    	[result setObject:[CPObject fromJSObject:obj[key]] forKey:key];
    }
    return result;
}


@end
