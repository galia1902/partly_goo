import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('#quest-sort');
  Sortable.create(list);
};

export { initSortable };
