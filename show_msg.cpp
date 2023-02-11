#include <iostream>
#include "show_msg.h"
#include "myclass.h"

void ShowMessage::output()
{
  MyClass obj;
	std::cout << "I'm show message class, obj call calc_plus - " <<
    obj.calc_plus(3, 8) 
    << std::endl;
}

