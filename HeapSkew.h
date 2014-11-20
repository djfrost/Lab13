#if !defined (HEAPSKEW_H)
#define HEAPSKEW_H

#include "BinaryTree.h"

template < class T >
class HeapSkew : public Drawable
{

   private:
      BinaryTree<T>* bt;
      int sze;
      BinaryTree<T>* merge(BinaryTree<T>* left, BinaryTree<T>* right);

      int (*compare_items) (T* item_1, T* item_2);

   public:
      HeapSkew(int (*comp_items) (T* item_1, T* item_2));
      virtual ~HeapSkew();

      bool heapIsEmpty();
      void heapInsert(T* item);
      T* heapRemove();

      void draw(Cairo::RefPtr<Cairo::Context> cr, int width, int height);
      void mouseClicked(int x, int y);

};

// this is a MAXHEAP (largest items to top alphabetical order)
template < class T >
HeapSkew<T>::HeapSkew(int (*comp_items) (T* item_1, T* item_2)) : Drawable()
{ 
   bt = new BinaryTree<T>();
   sze = 0;

   compare_items = comp_items;
}

template < class T >
HeapSkew<T>::~HeapSkew() 
{ 
   delete bt;
}  

template < class T >
bool HeapSkew<T>::heapIsEmpty()
{
   return sze == 0;
}

template < class T >
BinaryTree<T>* HeapSkew<T>::merge(BinaryTree<T>* left, BinaryTree<T>* right)
{
   //DO THIS
   if (left->isEmpty())
   {
       return right;                    
   }
   else if (right->isEmpty())
   {
       return left;     
   }

   int comp = (*compare_items) (left->getRootItem(), right->getRootItem());
   if (comp < 0)
   {
       BinaryTree<T>* reversed = merge(right, left);         
   }

   BinaryTree<T>* ll = left->detachLeftSubtree();
   BinaryTree<T>* lr = left->detachRightSubtree();
   left->attachRightSubtree(ll);
   
   if (lr->isEmpty())
   {
       left->attachLeftSubtree(right);
       return left;                  
   }
   else
   {
       BinaryTree<T>* subtree = merge(lr, right);
       left->attachLeftSubtree(subtree);
       return left;    
   }
}

template < class T >
void HeapSkew<T>::heapInsert(T* item)
{
   //DO THIS (calls merge, should be short)
   TreeNode<T>* itemTree = new TreeNode<T>(item);
   bt =merge(bt, itemTree);
   sze++;
}

template < class T >
T* HeapSkew<T>::heapRemove()
{
   //DO THIS (calls merge, should be short)
	bt = merge(bt->detachLeftSubtree(), bt->detachRightSubtree);
	sze--;
    return result;
}

template < class T >
void HeapSkew<T>::draw(Cairo::RefPtr<Cairo::Context> cr, int width, int height)
{
   bt->draw(cr, width, height);
}

template < class T >
void HeapSkew<T>::mouseClicked(int x, int y) {bt->mouseClicked(x, y);}

#endif
