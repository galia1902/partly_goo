import Sortable from 'sortablejs';

const initSortable = () => {

  const list = document.querySelector('#quest-sort');
  // Sortable.create(list);
  Sortable.create(list, {
    ghostClass: "ghost",
    animation: 150,
    swap: true,
    swapClass: 'highlight',
    dragClass: "sortable-drag",
  });

};

export { initSortable };
