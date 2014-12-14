<?php

/**
 *    app/controllers/AuthController.php
 * 
 *    Controller implements authorization jobs
 * 
 * 
 */
class AuthController extends Controller {

    /**
     * Displays the login page.
     *
     * @return Illuminate\View\View
     */
    public function getLogin() {
        $basic_data['title'] = 'Sign In';
        $basic_data['body_id'] = 'login';
        return ViewController::displayPage($basic_data,'auth.login',[]);
    }
    
    
    /**
     * Login user.
     *
     * @return Illuminate\View\View
     */
    public function login() {
        
        Input::flash();

        try {
            $credentials = array(
                'email' => Input::get('login'),
                'password' => Input::get('password')
            );
            $user = Sentry::authenticate($credentials, Input::get('remember_me'));
        } catch (Exception $e) {
            
            return Redirect::to(route('auth.login'))
                            ->withErrors(array($e->getMessage()));
        }
        return Redirect::intended(route('admin.categories'));
    }
    
    /**
     * Logout user.
     *
     * @return Illuminate\View\View
     */
    public function logout()
    {
        Sentry::logout();
        return Redirect::route('auth.login');
    }
}
