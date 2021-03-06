#include <iostream>
#include <memory>   //unique_ptr, shared_ptr
#include "../src/my_unique_ptr.h"
#include "../src/my_shared_ptr.h"
using namespace Tiny_STL;
using std::cout;
using std::endl;

class test
{
    public:
    test() : data(0){cout << "test() " << data << endl;}
    test(int i) : data(i){cout << "test(int i) " << data << endl;}
    test(const test& other) : data(other.data){cout << "test(const test& other) " << data << endl;}
    ~test(){cout << "~test() " << data << endl;} 
    void print() {cout << "print() data: " << data << endl;}
    int data;
};

my_unique_ptr<test> fun1(int i)
{
    my_unique_ptr<test> ptr(make_unique<test>(i));
    //返回my_unique_ptr<T>对象时，编译器会调用移动复制构造函数
    return ptr;
}

int main()
{
    {
        std::unique_ptr<int> uni_p;
        my_unique_ptr<test> ptr1(make_unique<test>(5));
        (*ptr1).print();
        //my_unique_ptr<test> ptr2(ptr1);  报错
        //my_unique_ptr<test> ptr2 = ptr1; 报错
        my_unique_ptr<test> ptr2(std::move(ptr1));
        (*ptr2).print();
        ptr2->print();
        my_unique_ptr<test> ptr3 = std::move(ptr2);
        (*ptr3).print();
        my_unique_ptr<test> ptr4 = fun1(1);
        ptr4.reset(new test(4));
        test *p = ptr4.release();
        delete p;
        ptr4.swap(ptr3);
        (*ptr4).print();
        my_unique_ptr<test[]> ptr5(make_unique<test[]>(6));
        ptr5[1].print();
    }
    cout << "end my_unique_ptr test" << endl;
    cout << "------------------------------" << endl;

    {
        my_shared_ptr<test> ptr1(make_shared<test>(1));
        auto ptr2(ptr1);
        auto ptr3 = ptr2;
        cout << "ptr1.use_count() = " << ptr1.use_count() << endl;
        ptr3.reset();
        ptr3 = std::move(ptr2);
        cout << "ptr1.use_count() = " << ptr1.use_count() << endl;
        (*ptr1).print();
        cout << "ptr2.use_count() = " << ptr2.use_count() << endl;
    }
    cout << "end my_shared_ptr test" << endl;
    cout << "------------------------------" << endl;
    
    {
        my_shared_ptr<test> ptr1(make_shared<test>(1));
        my_weak_ptr<test> ptr2(ptr1);
        cout << "ptr1.use_count() = " << ptr1.use_count() << endl;
        auto ptr3(ptr2.lock());
        cout << "ptr1.use_count() = " << ptr1.use_count() << endl;
    }
    cout << "end my_weak_ptr test" << endl;
    cout << "------------------------------" << endl;


}