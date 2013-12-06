@import <Foundation/Foundation.j>

@implementation CPObject (JSLiteralKit)

- (JSObject)toJSObject
{
    // Implement in subclass
    debugger;
}


+ (CPObject)fromJSObject:(JSObject)obj
{
    if (obj instanceof Array)
        return [CPArray fromJSObject:obj];

    var type = typeof obj;
    if (type == 'string' || type == 'boolean' || type == 'number')
        return obj;

    return [CPDictionary fromJSObject:obj];
}


@end
