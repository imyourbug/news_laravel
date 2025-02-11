@extends("admin_dashboard.layouts.app")

@section("style")

<style>
    .img_admn--user.img-avatar{
        border-radius: 50%;
    }
</style>

@endsection

@section("wrapper")
<!--start page wrapper -->
<div class="page-wrapper">
    <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">Tài khoản</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Tất cả tài khoản</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!--end breadcrumb-->

        <div class="card">
            <div class="card-body">
                <div class="d-lg-flex align-items-center mb-4 gap-3">
                    <div class="position-relative">
                        <input type="text" class="form-control ps-5 radius-30" placeholder="Tìm kiếm danh mục"> <span class="position-absolute top-50 product-show translate-middle-y"><i class="bx bx-search"></i></span>
                    </div>
                    {{-- <div class="ms-auto"><a href="{{ route('admin.categories.create') }}" class="btn btn-primary radius-30 mt-2 mt-lg-0"><i class="bx bxs-plus-square"></i>Thêm danh mục mới</a></div> --}}
                </div>
                <div class="table-responsive">
                    <table class="table mb-0">
                        <thead class="table-light">
                            <tr>
                                <th>Mã Tài khoản</th>
                                <th>Ảnh dại diện</th>
                                <th>Họ Tên</th>
                                <th>Email</th>
                                <th>Quyền</th>
                                <th>Thông tin</th>
                                <th>Ngày tạo</th>
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="ms-2">
                                            <h6 class="mb-0 font-14">#U-{{ $user->id }}</h6>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <img class="img_admn--user img-avatar" width="60" height="60" style="margin: auto; background-size: cover ;  background-image: url({{ $user->image ?  asset('storage/' . $user->image->path) : asset('storage/placeholders/user_placeholder.jpg') }})" alt="">
                                </td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->role->name }}</td>
                                @if($user->role->name != 'user')
                                <td>
                                    <a class="btn btn-primary btn-sm" href="{{ route('admin.users.show', $user) }}">Bài viết</a>
                                </td>
                                @else
                                <td>
                                </td>
                                @endif

                                <td>{{ $user->created_at->format('d/m/Y') }}</td>

                                <td>
                                    <div class="d-flex order-actions">
                                        {{-- <a href="{{ route('admin.users.edit', $user)}}" class=""><i class='bx bxs-edit'></i></a> --}}
                                        <a href="#" onclick="event.preventDefault(); document.querySelector('#delete_form_{{ $user->id }}').submit();" class="ms-3"><i class='bx bxs-trash'></i></a>

                                        <form method="post" action="{{ route('admin.users.destroy', $user) }}" id="delete_form_{{ $user->id }}">
                                            @csrf
                                            @method('DELETE')
                                        </form>

                                    </div>
                                </td>
                            </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>

                <div class="mt-4">{{ $users->links() }}</div>

            </div>
        </div>


    </div>
</div>
<!--end page wrapper -->
@endsection

@section("script")
	<script>
		$(document).ready(function () {
		setTimeout(()=>{
				$(".general-message").fadeOut();
		},5000);

		});
	</script>

@endsection
