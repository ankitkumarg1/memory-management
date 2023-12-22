# memory-management
To Understand the concept of memory leakage and management in Swift


What is Memeory Leakage?

It is a scenario, where ARC(Automatic Reference Count) is unable to deallocate an object.It happens when strong reference point to each other and does not allow the deallocation.

What is ARC count?

The ARC count is the number of strong references to an object.

How ARC works?

ARC keeps a track of count of strong reference to an object and increase or decrease the count on the increase or decrease of references to object.

   ----------
  |          |
  |          |      OBJECT 1 Is in strong reference to OBJECT 2                      
  |          |
  |OBJECT 1  |
  |          | 
  |          |
  |          |
  -----------

   ----------
  |          |
  |          |    OBJECT 2 Is in strong reference to OBJECT 1                            
  |          |
  |OBJECT 2  |
  |          | 
  |          |
  |          |
  -----------


Since Object 1 has strong reference to object 2,so if we add object 1 in object 2 ,then object 2 will not be deallocated until object 1 is deallocated.



   ----------
  |          |
  |          |      OBJECT 1 Is in weak reference to OBJECT 2                      
  |          |
  |OBJECT 1  |
  |          | 
  |          |
  |          |
  -----------

   ----------
  |          |
  |          |    OBJECT 2 Is in strong reference to OBJECT 1                            
  |          |
  |OBJECT 2  |
  |          | 
  |          |
  |          |
  -----------


Since Object 1 has weak reference to object 2,so if we add object 1 in object 2 ,then object 2 will be deallocated and will remove object 1 also then after.
