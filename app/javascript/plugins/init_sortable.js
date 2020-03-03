import Sortable from 'sortablejs';

const initSortable = () => {

  const list = document.querySelector('#quest-sort');
  // Sortable.create(list);
  Sortable.create(list, {
    animation: 150
  });

};

export { initSortable };
