@extends('admin.admin_dashboard')

@section('admin')


<div class="page-content">
    <div class="row profile-body">

      <!-- middle wrapper start -->
      <div class="col-md-8 col-xl-8 middle-wrapper">
        <div class="row">
            <div class="card">
                <div class="card-body">
  
                    <h6 class="card-title"> Update Property Type</h6>

                    <form method="POST" action="{{route('update.type')}}" class="forms-sample">

                      @csrf 
                      <input type="hidden" name="id" value="{{$types->id}}">
                      
                        <div class="mb-3">
                            <label for="type_name" class="form-label">Type Name</label>
                            <input type="text" name="type_name" value="{{$types->type_name}}" class="form-control @error('type_name') is-invalid @enderror" id="type_name" autocomplete="off">

                            @error('type_name')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="type_icon" class="form-label">Type Icon</label>
                            <input type="text" value="{{$types->type_icon}}" name="type_icon" class="form-control @error('type_icon') is-invalid @enderror" id="type_icon" autocomplete="off">

                            @error('type_icon')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>

                        <button type="submit" class="btn btn-primary me-2">Update</button>
                    </form>
  
                </div>
              </div>
         
        </div>
      </div>
      <!-- middle wrapper end -->
      <!-- right wrapper start -->
     
      <!-- right wrapper end -->
    </div>

    </div>

@endsection