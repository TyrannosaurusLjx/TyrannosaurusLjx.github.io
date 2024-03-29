----
线程是 CPU 调度的基本单位,可以独立的执行程序(并不是一定要说进程)

---
线程没有自己独立的地址空间,它共享其进程所属的地址空间

---
一个进程可以顺序的执行一个或者多个程序,但是不能同时执行多个程序

---
一个程序的一次执行有可能产生多个进程,比如长按双击加点赞( )

---
程序封闭性是指进程执行的结果只取决于进程本身,不受外界的影响,也就是说不管进程是不停顿执行还是走走停停,结果都是一样的,并发以后进程的执行结果会不同

    比如并发进程共享变量的时候,各个进程执行的先后顺序不同变量的最终结果也有可能不同

---
速度最快的进程通信方式是**共享内存**,消息传递需要拷贝数据,传递,排队等等,管道通信同理

---
单处理器系统实现并发技术后,同一时间段内各个进程并发运行,cpu 和 I/O 设备并行工作

---
线程的优点有提高系统并发性,节约系统资源,便于进程间通信等等,但是线程会降低进程的安全性,因为一旦一个线程出现问题,整个进程都有可能出错

---
内核级线程在同一进程下切换的时候,系统开销大,因为要进行核心态用户态的转化,但是用户级线程就不用,因为在操作系统看来这一直就是一个进程在运行,因此系统开销小的多

---
同时用户级线程的缺点就暴露出来了,因为在操作系统看来外部只有一个进程在运行,因此只会分配最多一个 cpu,换句话说这些线程只能轮转使用 cpu,而且一旦有一个出了问题,整个进程都会被阻塞

---
进程唤醒的概念是说,当进程需要的资源(**不包括CPU**)可用的时候,进程被唤醒.

    所以,时间片用完以后下一个进程上处理机运行的过程不能说是唤醒,因为事实上这个进程等待的系统资源是处理机

---
临界资源只能同时被一个进程使用,即便是父子进程也不能同时访问,另外父子进程的虚拟地址空间不是共享的,父进程只可与子进程共享一部分资源

---
进程从创建态到就绪态是由高级调度完成的，高级调度（作业调度）的任务是从后背队列中选择一个或者一批作业，创建PCB，分配内存等其他资源，并插入就绪队列

---
进阻塞态应该是中级调度，上处理机运行和回到就绪态都是低级调度

---
处于临界区的进程也可以被调度，或者有可能自己请求I/O被阻塞

---
FCFS利于长作业，而CPU型繁忙作业也要长时间占用CPU，因此类似于长作业，从而FCFS算法也利于CPU繁忙型作业

---
实时系统普遍采用抢占式的优先级算法，外部直接设置静态优先级，使得机器立刻做出响应

---
多级反馈队列需要设置很多队列，并再不同队列中转化，系统开销较大

---
0时刻上处理机也属于进程调度，因此如果题目问调度次数记得加上最开始的一次

---
正在访问临界资源的进程由于请求 I/O 被阻塞时,运气其他进程上处理机运行但是不得进入该进程所锁定的临界区

---
共享数据和临界资源的最大区别就是是否在同一时间内只允许一个进程访问,如公用队列

___
两个进程需要协同工作就是有同步关系,比如写和读数据

---
用 P,V 操作实现进程同步,信号量的初值就是资源的量化

---
纯代码:又称可重入代码,允许多个进程同时访问

---
死锁的情况

```cpp
process1{
    P(X);
    if(Y.available){
        P(Y);
        something;
    }
}

process2{
    P(Y);
    if(X.available){
        P(X);
        something;
    }
}
```
---
可能出现进程全部被阻塞的情况(n 个 ),但是如果没有阻塞,就绪队列最多有 n-1 个进程(总共 n 个)

---

































