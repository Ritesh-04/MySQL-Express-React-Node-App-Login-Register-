import React, { useEffect, useState } from 'react';
import { useHistory } from 'react-router-dom';

const Home = () => {
    const history = useHistory();
    const [token, setToken] = useState('');
    const [userName, setUserName] = useState('');
    const [userEmail, setUserEmail] = useState('');

    useEffect(() => {
        setToken(sessionStorage.getItem('token'));
        setUserName(sessionStorage.getItem('name'));
        setUserEmail(sessionStorage.getItem('email'));
    });

    const handleLogout = () => {
        sessionStorage.clear();
        history.push('/');
    }

    return (
        <>
            {token && <div className="d-flex justify-content-center align-items-center login-container">
                <div className="card float-right">
                    <div className="row">
                        <div className="col-sm-5">
                            <img className="d-block w-100" src="https://img.icons8.com/bubbles/2x/user-male.png" alt="usericon" />
                        </div>
                        <div className="col-sm-7">
                            <div className="card-block text-left pt-4">
                                <p><strong>Name: </strong>{userName}</p>
                                <p><strong>Email Id: </strong>{userEmail}</p>
                                <p><button type="button" className="btn btn-primary" onClick={handleLogout}>Logout</button></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>}
        </>
    )
}
export default Home;