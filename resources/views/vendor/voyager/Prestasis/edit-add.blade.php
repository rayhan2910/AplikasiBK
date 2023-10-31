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
                            <label for="nama">Nama Siswa</label>
                            @php
                            $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};

                            $row = $dataTypeRows->where('field', 'prestasi_belongsto_siswa_relationship')->first();
                            $options = $row->details;
                            @endphp
                            @include('voyager::formfields.relationship')
                        </div>
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="id_sekolah" name="id_sekolah" placeholder="Sekolah" value="{{ Auth::user()->sekolah }}">
                        </div>
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="id_semester" name="id_semester" placeholder="Semester" value="{{ Auth::user()->semester }}">
                        </div>
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="id_tahun_akademik" name="id_tahun_akademik" placeholder="Tahun Akademik" value="{{ Auth::user()->tahunakademik }}">
                        </div>
                        <div class="form-group">
                            <label for="kelas">Jenis Lomba</label>
                            <input type="text" class="form-control" id="jenis_lomba" name="jenis_lomba" placeholder="Jenis Lomba" value="{{ old('jenis_lomba', $dataTypeContent->jenis_lomba ?? '') }}">
                        </div>
                        <div class="form-group">
                            <label for="kelas">Tingkat</label>
                            <input type="text" class="form-control" id="tingkat" name="tingkat" placeholder="Tingkat" value="{{ old('tingkat', $dataTypeContent->tingkat ?? '') }}">
                        </div>
                        <div class="form-group">
                            <label for="kelas">Juara</label>
                            <input type="text" class="form-control" id="juara" name="juara" placeholder="Juara" value="{{ old('juara', $dataTypeContent->juara ?? '') }}">
                        </div>
                        <div class="form-group ">
                            <label class="control-label" for="bd">Bidang Lomba</label>
                            <br>
                            <ul class="radio">
                                <li><input type="radio" id="bd-option1" name="bidang_lomba" value="1" {{ ($dataTypeContent->bidang_lomba=="1")? "checked" : "" }}>
                                    <label for="bd-option1">Akademik</label>
                                    <div class="check"></div>
                                </li>
                                <li><input type="radio" id="bd-option2" name="bidang_lomba" value="2" {{ ($dataTypeContent->bidang_lomba=="2")? "checked" : "" }}>
                                    <label for="bd-option2">Non Akademik</label>
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