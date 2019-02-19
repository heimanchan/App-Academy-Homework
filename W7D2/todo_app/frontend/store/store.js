import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
  const store = createStore(
    rootReducer, 
    preloadedState, 
    applyMiddleware(addLoggingToDispatch, addHelloToDispatch)
  );
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

// ES6 fat arrow notation
const addLoggingToDispatch = store => next => action => {
  console.log(store.getState());
  console.log(action);
  next(action);
  console.log(store.getState());
}

// function addLoggingToDispatch(store) {
//   return function (next) {
//     return function (action) {
//       console.log(store.getState());
//       console.log(action);
//       next(action);
//       console.log(store.getState());
//     };
//   };
// };

const addHelloToDispatch = store => next => action => {
  console.log("Hello from middleware!")
  next(action);
}

export default configureStore;
