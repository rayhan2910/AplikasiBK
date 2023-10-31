@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('css')
<meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
<h1 class="page-title">
    <i class="{{ $dataType->icon }}"></i>
    {{ __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
</h1>
@stop

@section('content')
<div class="page-content container-fluid">
    <form class="form-edit-add" role="form" action="@if(!is_null($dataTypeContent->getKey())){{ route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey()) }}@else{{ route('voyager.'.$dataType->slug.'.store') }}@endif" method="POST" enctype="multipart/form-data" autocomplete="off">
        <!-- PUT Method if we are editing -->
        @if(isset($dataTypeContent->id))
        {{ method_field("PUT") }}
        @endif
        {{ csrf_field() }}

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    {{-- <div class="panel"> --}}
                    @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif

                    <div class="panel-body">
                        <div class="form-group">
                            <label for="kelas">Nama Ptk</label>
                            <input type="text" class="form-control" id="nama_ptk" name="nama_ptk" placeholder="Nama Ptk" value="{{ old('nama_ptk', $dataTypeContent->nama_ptk ?? '') }}">
                        </div>
                        <div class="form-group">
                            <label for="kelas">Nip</label>
                            <input type="text" class="form-control" id="nip" name="nip" placeholder="Nip" value="{{ old('', $dataTypeContent->nip ?? '') }}">
                        </div>
                        <div class="form-group ">
                            <label class="control-label" for="jk">Jenis Kelamin</label>
                            <br>
                            <ul class="radio">
                                <li><input type="radio" id="jk-option1" name="jk" value="1" {{ ($dataTypeContent->jk=="1")? "checked" : "" }}>
                                    <label for="jk-option1">Laki-Laki</label>
                                    <div class="check"></div>
                                </li>
                                <li><input type="radio" id="jk-option2" name="jk" value="2" {{ ($dataTypeContent->jk=="2")? "checked" : "" }}>
                                    <label for="jk-option2">Perempuan</label>
                                    <div class="check"></div>
                                </li>
                            </ul>
                        </div>

                        <div class="form-group">
                            <label for="jabatan">Jabatan</label>
                            @php
                            $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};

                            $row = $dataTypeRows->where('field', 'ptk_belongsto_jabatan_relationship')->first();
                            $options = $row->details;
                            @endphp
                            @include('voyager::formfields.relationship')
                        </div>
                        <div class="form-group">
                            <label for="kelas">Username</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="{{ old('username', $dataTypeContent->username ?? '') }}">
                        </div>
                        <div class="form-group ">
                            <label class="control-label" for="status">Status</label>
                            <br>
                            <ul class="radio">
                                <li><input type="radio" id="status-option1" name="status" value="1" {{ ($dataTypeContent->status=="1")? "checked" : "" }}>
                                    <label for="status-option1">Aktif</label>
                                    <div class="check"></div>
                                </li>
                                <li><input type="radio" id="status-option2" name="status" value="2" {{ ($dataTypeContent->status=="2")? "checked" : "" }}>
                                    <label for="status-option2">Tidak Aktif</label>
                                    <div class="check"></div>
                                </li>
                            </ul>
                        </div>
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="sekolah" name="sekolah" value="{{ Auth::user()->sekolah }}">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-primary pull-right save">
            {{ __('voyager::generic.save') }}
        </button>
    </form>

    <iframe id="form_target" name="form_target" style="display:none"></iframe>
    <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
        {{ csrf_field() }}
        <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
        <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
    </form>
</div>
@stop

@section('javascript')
<script>
    $('document').ready(function() {
        $('.toggleswitch').bootstrapToggle();
    });
</script>
@stop