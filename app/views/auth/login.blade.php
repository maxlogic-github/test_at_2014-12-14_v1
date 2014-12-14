<div id="login-wrapper" class="png_bg">
    <div id="login-top">

        <h1>Simpla Admin</h1>
        <!-- Logo (221px width) -->
        <img id="logo" src="resources/images/logo.png" alt="Simpla Admin logo" />
    </div> <!-- End #logn-top -->

    <div id="login-content">

        <form action="login" method="POST">

            <p>
                <label>Username</label>
                <input class="text-input" type="text" name="login" />
            </p>
            <div class="clear"></div>
            <p>
                <label>Password</label>
                <input class="text-input" type="password" name="password" />
            </p>
            <div class="clear"></div>
            <p id="remember-password">
                <input type="checkbox" name="remember_me" />Remember me
            </p>
            <div class="clear"></div>
            <p>
                <input class="button" type="submit" value="Sign In" />
            </p>

        </form>
    </div> <!-- End #login-content -->

</div> <!-- End #login-wrapper -->
