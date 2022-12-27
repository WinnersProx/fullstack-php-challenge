import { ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

import './App.css';
import ReportsView from './components/ReportsView';

function App() {
  return (
    <div className='container'>
      <ReportsView />

      <ToastContainer hideProgressBar={true} />
    </div>
  );
}

export default App;
