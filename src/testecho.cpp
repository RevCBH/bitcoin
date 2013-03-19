#include <boost/assign/list_of.hpp>
#include "bitcoinrpc.h"

using namespace std;
using namespace boost;
using namespace boost::assign;
using namespace json_spirit;

Value gettestecho(const Array& params, bool fHelp)
{
    if (fHelp || params.size() != 1)
        throw runtime_error(
            "gettestecho\n"
            "Test echoing data over RPC");

    Array ret; 
    Object o;
    o.push_back(Pair("data", params[0].get_str()));
    ret.push_back(o);
    return ret;
}
