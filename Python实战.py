'''
问题1:	列出1到20的数字，若是3的倍数就用apple代替，
	若是5的倍数就用orange代替，
	若既是3的倍数又是5的倍数就用appleorange代替。注意：只能用2行代码搞定
解决方案:利用切片
深入解析:
其实算法很简单，就是i对3和5取模，但是能2行搞定，精妙之处在于利用了字符串切片的一个特性
比如apple[5::],结果为空,为什么，因为下标5的位置不存在，所以为空，那么apple[i%3*5],意味着i在1,2,3,4的时候取3的模,结果是1,2,0,1,然后用一个很巧妙的方法*5(5其实是apple的长度)，做了一个偏移
这样在3的整数的时候下面0*5=0，也就是从0开始取apple,而1,2,4的时候取3模是1,2,1,再乘以5就越界了所以取的apple为空.
同理orange也是这样的，取5的模，然后*6(6是orange的长度)偏移
最后用了一个or i ，先来说一下or, Python 对or 的判断是,print A or B ,若A为true,则结果为True,若A是false再判断B,B是true，则结果是True
print 'apple'[i%3*5::]+'orange'[i%5*6::] or i，表示当apple和orange偏移越界了就都为空的时候，就取i的值,是1,2,4,7...
'''

def oneExample():
	for i in range(1,21):
		print ('apple'[i%3*5::]+'orange'[i%5*6::] or i)

'''
	实战案例二:
	比如说我有一串字符串人名:names=' Kunpen Ji, Li XIAO, Caron Li, Donl SHI, Ji ZHAO, Fia YUAN Y, Weue DING, Xiu XU, Haiying WANG, Hai LIN, Jey JIANG, Joson WANG E, Aiyang ZHANG, Hay MENG, Jak ZHANG E, Chang Zhang, Coro ZHANG',我希望能做到下面3点
	问题1：排序,按照名字A-Z排序
	问题2：找出里面姓”ZHANG”有几个
	问题3：找出名字里面最长的人
 解决方案:利用切片
 问题详解:
 分析问题1:
   首先我们要做的对字符串进行分割去掉','然后就变成了一个长的列表，然后对列表进行排序，第一个问题就解决了.
分析问题2:
接下来，我们需要找出姓"ZHANG",因为名字里面有英文名字和中文名字，有的后面还跟E/Y，所以我们先定义一个函数，把分割后的新的名字列表，取出每一个名字，然后解析，翻转，用推导列表形成一个新的名字列表，然后再用字符串里的.startswith("ZHANG")取出符合的名字
'''
names = ' Kunpen Ji, Li XIAO, Caron Li, Donl SHI, Ji ZHAO, Fia YUAN Y, Weue DING, Xiu XU, Haiying WANG, Hai LIN, Jey JIANG, Joson WANG E, Aiyang ZHANG, Hay MENG, Jak ZHANG E, Chang Zhang, Coro ZHANG'

def tweoExample():
	#names = ' Kunpen Ji, Li XIAO, Caron Li, Donl SHI, Ji ZHAO, Fia YUAN Y, Weue DING, Xiu XU, Haiying WANG, Hai LIN, Jey JIANG, Joson WANG E, Aiyang ZHANG, Hay MENG, Jak ZHANG E, Chang Zhang, Coro ZHANG'
	nameList = names.split(",")
	sortNameList = sorted(nameList)

	#输出方式1
	i = 0
	for ename in sortNameList:
		print("index: %(i) d, name: %(ename) s" %{'i':i,'ename':ename})
		i +=1

	#输出方式2
	print("=====================================")
	for i,ename in enumerate(sortNameList):
		print("index: %(i) d, name: %(ename) s" %{'i':i,'ename':ename})

def twoExample_2():
	new_names_lists=[_change(name) for name in names.split(',')]

	print (new_names_lists)
	names_with_ZHANG=[name for name in new_names_lists if name.startswith('ZHANG')]
	print (names_with_ZHANG)

#转换方法
def _change(text):
	
	new_s1=text.split()[0:2]
	print("-",new_s1)
	reverse_s1=new_s1[::-1]
	print(reverse_s1)
	return ' '.join(reverse_s1)


if __name__ =='__main__':
	fruits = ['apple', 'banana']  
	result = '-'.join(fruits)
	print(result)