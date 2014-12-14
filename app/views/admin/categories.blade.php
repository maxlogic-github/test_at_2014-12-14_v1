
<div class="edit_category_dialog_elm overlay_layer" style="position: fixed; margin: 0; padding: 0; top: 0; left: 0; z-index: 1000; width: 100%; height: 100%; opacity: 0.3; background-color: #DDDDDD; @if (!$errors->isEmpty() || isset($category)) display:block @else display:none @endif">
</div><!-- End dialog cover -->

<div id="edit_category_dialog" class="dialog edit_category_dialog_elm"  style="position: absolute;z-index: 1001;margin-left:250px;margin-top:25px;@if (!$errors->isEmpty() || isset($category)) display:block @else display:none @endif">
     <div class="content-box" style="box-shadow:0 0 10px rgba(0,0,0,0.5);"><!-- Start Content Box -->

        <div class="content-box-header">

            <h3 id="edit_category_dialog_title">{{ $edit_category_dlg_title }}</h3>

        </div> <!-- End .content-box-header -->

        <div class="content-box-content">
            <form method="POST" action="/save-category" enctype="multipart/form-data" id="edit_category_form">
                <input type="hidden" name="category_id" value="{{ Input::old('category_id') }}@if (isset($category['id'])){{ $category['id'] }}@endif">
                <input type="hidden" name="page" value="{{ $categories['pagination']['page'] }}">
                <p>
                    <label>Category Name</label>
                    <input class="text-input small-input" type="text" id="category_name_inp" name="category_name" value="{{ Input::old('category_name') }}@if (isset($category['name'])){{ $category['name'] }}@endif"/> 
                    @if ($errors->first('category_name'))<span class="input-notification attention png_bg" id="new_cat_empty_name_msg">Please type the name</span>@endif
                </p>
                <p>
                    <label>Category URL</label>
                    <input class="text-input small-input" type="text" id="category_url_inp" name="category_url" value="{{ Input::old('category_url') }}@if (isset($category['url'])){{ $category['url'] }}@endif"/> 
                    @if ($errors->first('category_url'))<span class="input-notification attention png_bg" id="new_cat_empty_name_msg">Please type the name</span>@endif
                </p>
                <p>
                    <label>Parent category</label>

                    <select class="small-input" id="category_parent_id_sel" name="category_parent_id">
                        <option value="0">- No parent category -</option>
                        @foreach($first_level_categories as $first_level_category)
                        @if ((Input::old('category_parent_id') == $first_level_category['id']) || (isset($category['parent_id']) && ($category['parent_id'] == $first_level_category['id'])))
                        <option value="{{ $first_level_category['id'] }}" selected="selected">{{ $first_level_category['name'] }}</option> 
                        @else
                        <option value="{{ $first_level_category['id'] }}">{{ $first_level_category['name'] }}</option>
                        @endif
                        @endforeach
                    </select>
                </p>
                @if (isset($category['image_filename']))
                <p>
                    <img src="{{ $category_image_dir }}{{ $category['image_filename'] }}" style="width:600px; height:auto;">
                </p>
                @endif
                <p> 
                    <input type="file" name="category_image" accept="image/*">
                    @if ($errors->first('category_image'))<span class="input-notification attention png_bg" id="new_cat_empty_image_msg">Please select an image</span>@endif
                </p>
                <p>
                    <label>Description</label>
                    <textarea class="text-input textarea wysiwyg" id="textarea" name="category_description" cols="79" rows="10">{{ Input::old('category_description') }}@if (isset($category['description'])){{ $category['description'] }}@endif</textarea>
                </p>
                <p>
                    <label>Meta Title</label>
                    <textarea class="textarea" name="category_meta_title" cols="79" rows="2" >{{ Input::old('category_meta_title') }}@if (isset($category['meta_title'])){{ $category['meta_title'] }}@endif</textarea>
                </p>
                <p>
                    <label>Meta Description</label>
                    <textarea class="textarea" name="category_meta_description" cols="79" rows="2" >{{ Input::old('category_meta_description') }}@if (isset($category['meta_description'])){{ $category['meta_description'] }}@endif</textarea>
                </p>
                <p>
                    <label>Meta Keywords</label>
                    <textarea class="textarea" name="category_meta_keywords" cols="79" rows="2" >{{ Input::old('category_meta_keywords') }}@if (isset($category['meta_keywords'])){{ $category['meta_keywords'] }}@endif</textarea>
                </p>

                <input id="save_new_category_btn" class="button" style="float:left;" type="submit" value="Save" />
                <a style="float:left; margin-left: 10px; margin-top: 7px" type="button" href="/categories?page={{ $categories['pagination']['page'] }}" >Cancel</a>
                <div style="clear:both"></div>
            </form>
        </div> <!-- End .content-box-content -->

    </div> <!-- End .content-box -->
</div>

<div id="body-wrapper"> <!-- Wrapper for the radial gradient background -->

    <div id="sidebar">
        <div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->

            <h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>

            <!-- Logo (221px wide) -->
            <a href="#"><img id="logo" src="resources/images/logo.png" alt="Simpla Admin logo" /></a>

            <!-- Sidebar Profile links -->
            <div id="profile-links">
                <a href="/logout" title="Sign Out">Sign Out</a>
            </div>        

            <ul id="main-nav">  <!-- Accordion Menu -->


                <li> 
                    <a href="#" class="nav-top-item current"> <!-- Add the class "current" to current menu item -->
                        Articles
                    </a>
                    <ul>
                        <li><a class="current" href="#">Manage Categories</a></li> <!-- Add class "current" to sub menu items also -->
                    </ul>
                </li>

            </ul> <!-- End #main-nav -->
        </div>
    </div> <!-- End #sidebar -->

    <div id="main-content"> <!-- Main Content Section with everything -->

        <noscript> <!-- Show a notification if the user has disabled javascript -->
        <div class="notification error png_bg">
            <div>
                Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
            </div>
        </div>
        </noscript>

        <!-- Page Head -->
        <h2>@if (isset($page_head)) {{ $page_head }} @endif</h2>
        <p id="page-intro">@if (isset($page_intro)) {{ $page_intro }} @endif</p>

        <ul class="shortcut-buttons-set">

            <li onclick="$('.edit_category_dialog_elm').show()"><a class="shortcut-button new-category" href="#new_category_creation_dlg"><span class="png_bg">
                        Add New Category
                    </span></a></li>



        </ul><!-- End .shortcut-buttons-set -->

        <div class="clear"></div> <!-- End .clear -->

        <div class="content-box"><!-- Start Content Box -->

            <div class="content-box-header">

                <h3>Category list</h3>

            </div> <!-- End .content-box-header -->

            <div class="content-box-content">


                <table>

                    <thead>
                        <tr>
                            <th><input class="check-all" type="checkbox" /></th>
                            <th>Name</th>
                            <th>URL</th>
                            <th>Parent Category</th>
                            <th></th>
                        </tr>

                    </thead>

                    <tbody>
                        @if (!empty($categories))
                        @foreach($categories['list'] as $category)
                        <tr>
                            <td><input type="checkbox" /></td>

                            <td>{{ $category['name'] }}</td>
                            <td>{{ $category['url'] }}</td>
                            @if (!empty($category['parent_category']))

                            <td>{{ $category['parent_category']['name'] }}</td>
                            @else
                            <td> - </td>
                            @endif
                            <td>
                                <a href="/edit-category?category_id={{ $category['id'] }}&page={{ $categories['pagination']['page'] }}" title="Edit"><img src="resources/images/icons/pencil.png" alt="Edit" /></a>
                                <a class="delete_category_icon" href="/delete-category?category_id={{ $category['id'] }}&page={{ $categories['pagination']['page'] }}" title="Delete"><img src="resources/images/icons/cross.png" alt="Delete" /></a> 
                            </td>
                        </tr>
                        @endforeach
                        @else
                        <tr>
                            <td colspan="5">
                                No one categories found
                            </td>
                        </tr>
                        @endif
                    </tbody>

                    <tfoot>
                        @if($categories['pagination']['page_count'] != 0)
                        <tr>
                            <td colspan="6">
                                <div class="pagination">
                                    @if ($categories['pagination']['page'] != 1)
                                    <a href="/categories?page=1" title="First Page">&laquo; First</a><a href="#" title="Previous Page">&laquo; Previous</a>
                                    @endif
                                    @for ($p = 1; $p <= $categories['pagination']['page_count']; $p++)
                                    @if ($p == $categories['pagination']['page'])
                                    <a href="#" class="number current" title="{{ $p }}">{{ $p }}</a>
                                    @else
                                    <a href="/categories?page={{ $p }}" class="number" title="{{ $p }}">{{ $p }}</a>
                                    @endif
                                    @endfor
                                    @if ($categories['pagination']['page'] != $categories['pagination']['page_count'])
                                    <a href="/categories?page={{ $categories['pagination']['page']+1 }}" title="Next Page">Next &raquo;</a><a href="/categories?page={{ $categories['pagination']['page_count'] }}" title="Last Page">Last &raquo;</a>
                                    @endif
                                </div> <!-- End .pagination -->
                                <div class="clear"></div>
                            </td>
                        </tr>
                        @endif
                    </tfoot>

                </table>



            </div> <!-- End .content-box-content -->

        </div> <!-- End .content-box -->
    </div> <!-- End #main-content -->

</div>
<script type="text/javascript">
    $(document).ready(function()
    {
       $('.delete_category_icon').click(function()
       {
           if (!confirm('Do you raely want to delete this category?'))
           {
               return false;
           }
       }) 
    });
</script>



