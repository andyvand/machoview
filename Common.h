/*
 *  Common.h
 *  MachOView
 *
 *  Created by Peter Saghelyi on 10/09/2011.
 *
 */


//#define MV_NO_MULTITHREAD
//#define MV_NO_ARCHIVER
//#define MV_STATISTICS

extern NSCondition * pipeCondition;
extern int32_t numIOThread;
#if MAC_OS_X_VERSION_MIN_REQUIRED >= 101200
extern std::atomic<int64_t> nrow_total;
extern std::atomic<int64_t> nrow_loaded;
#else
extern int64_t nrow_total;  // number of rows (loaded and empty)
extern int64_t nrow_loaded; // number of loaded rows
#endif

#define NSSTRING(C_STR) [NSString stringWithCString: (char *)(C_STR) encoding: [NSString defaultCStringEncoding]]
#define CSTRING(NS_STR) [(NS_STR) cStringUsingEncoding: [NSString defaultCStringEncoding]]

#define N_ELEMENTS(ARR)   (sizeof(ARR)/sizeof(*(ARR)))
#define FIRST_ELEM(ARR)   (&(ARR)[0])
#define LAST_ELEM(ARR)    (&(ARR)[N_ELEMENTS(ARR)-1])
