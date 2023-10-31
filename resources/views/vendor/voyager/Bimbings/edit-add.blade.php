@extends('voyager::master')
<script type="text/javascript" src="//js.nicedit.com/nicEdit-latest.js"></script>
<script type="text/javascript">
    bkLib.onDomLoaded(function() {
        nicEditors.allTextAreas()
    });
</script>

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

                            $row = $dataTypeRows->where('field', 'bimbing_belongsto_siswa_relationship')->first();
                            $options = $row->details;
                            @endphp
                            @include('voyager::formfields.relationship')
                        </div>
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="id_sekolah" name="id_sekolah" placeholder="Sekolah" value="{{ Auth::user()->sekolah }}">
                        </div>
                        <div class="form-group">
                            <label for="nama">Konselor</label>
                            @php
                            $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};

                            $row = $dataTypeRows->where('field', 'bimbing_belongsto_ptk_relationship')->first();
                            $options = $row->details;
                            @endphp
                            @include('voyager::formfields.relationship')
                        </div>
                        <div class="form-group">
                            <label for="jenis_layanan">Jenis Layanan</label>
                            <select class="form-control select2" id="jenis_layanan" name="jenis_layanan">
                                <option value="">--Pilih Layanan--</option>
                                <option value="Orientasi">Orientasi</option>
                                <option value="Informasi">Informasi</option>
                                <option value="Penempatan Penyaluran">Penempatan Penyaluran</option>
                                <option value="Pembelajaran">Pembelajaran</option>
                                <option value="Penguasaan Konten">Penguasaan Konten</option>
                                <option value="Konseling Individu">Konseling Individu</option>
                                <option value="Konseling Kelompok">Konseling Kelompok</option>
                                <option value="Bimbingan Kelompok">Bimbingan Kelompok</option>
                                <option value="Konsultasi">Konsultasi</option>
                                <option value="Meditasi">Meditasi</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="bidang_bimbingan">Bidang Bimbingan</label>
                            <select class="form-control select2" id="bidang_bimbingan" name="bidang_bimbingan">
                                <option value="">--Pilih Layanan--</option>
                                <option value="Pribadi">Pribadi</option>
                                <option value="Sosial">Sosial</option>
                                <option value="Belajar">Belajar</option>
                                <option value="Karir">Karir</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="kelas">Hari dan Tanggal</label>
                            <input type="date" class="form-control" id="hari_tanggal" name="hari_tanggal" placeholder="Tanggal...." value="{{ old('hari_tanggal', $dataTypeContent->hari_tanggal ?? '') }}">
                        </div>
                        <div class="form-group">
                            <label for="kelas">Pihak Sekolah</label>
                            <input type="text" class="form-control" id="pihak_sekolah" name="pihak_sekolah" placeholder="Pihdak Sekolah..." value="{{ old('pihak_sekolah', $dataTypeContent->pihak_sekolah ?? '') }}"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="kelas">Tujuan</label>
                            <textarea class="form-control" id="tujuan" name="tujuan" placeholder="Tujuan..." value="{{ old('tujuan', $dataTypeContent->tujuan ?? '') }}"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="kelas">Deskripsi</label>
                            <textarea class="form-control" id="deskripsi" name="deskripsi" placeholder="Deskripsi..." value="{{ old('deskripsi', $dataTypeContent->deskripsi ?? '') }}"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="kelas">Tindak Lanjut</label>
                            <textarea class="form-control" id="tindak_lanjut" name="tindak_lanjut" placeholder="Tindak Lanjut dari home visite..." value="{{ old('tindak_lanjut', $dataTypeContent->tindak_lanjut ?? '') }}"></textarea>
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