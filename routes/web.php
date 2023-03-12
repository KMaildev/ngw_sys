<?php

use App\Http\Controllers\AgentListController;
use App\Http\Controllers\ContractController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\DemandController;
use App\Http\Controllers\FileManagementController;
use App\Http\Controllers\HospitalController;
use App\Http\Controllers\LabourDocsController;
use App\Http\Controllers\LabourManagementController;
use App\Http\Controllers\LabourPaymentController;
use App\Http\Controllers\MedicalTestController;
use App\Http\Controllers\MembersListsController;
use App\Http\Controllers\NrcController;
use App\Http\Controllers\OverseasAgentController;
use App\Http\Controllers\PassportController;
use App\Http\Controllers\PassportDatatableController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SendingController;
use App\Http\Controllers\TownshipController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('auth.login');
});
Auth::routes(['register' => false]);

Route::middleware('auth')->group(function () {

    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

    Route::resource('users', UserController::class);
    Route::resource('country', CountryController::class);
    Route::resource('agent_list', AgentListController::class);
    Route::resource('overseas_agent', OverseasAgentController::class);
    Route::get('overseas_agent_ajax/{id}', [OverseasAgentController::class, 'dependentAjax'])->name('overseas_agent_ajax');
    Route::resource('passport', PassportController::class);
    Route::get('find_passport_ajax/{id}', [PassportController::class, 'findPassportAjax'])->name('find_passport_ajax');
    Route::post('/passport_import', [PassportController::class, 'passportImport'])->name('passport_import');

    Route::get('/reject_passport/{id}', [PassportController::class, 'rejectPassport'])->name('reject_passport');
    Route::get('/reject_passport_list', [PassportController::class, 'rejectPassportList'])->name('reject_passport_list');
    Route::get('/cancel_reject_passport/{id}', [PassportController::class, 'cancelRejectPassport'])->name('cancel_reject_passport');
    Route::resource('demand', DemandController::class);
    Route::get('demand_ajax/{id}', [DemandController::class, 'demandAjax'])->name('demand_ajax');
    Route::resource('contract', ContractController::class);
    Route::resource('labour_management', LabourManagementController::class);
    Route::get('labour_create_view/{id}', [LabourManagementController::class, 'createAndView'])->name('labour_create_view');
    Route::resource('sending', SendingController::class);
    Route::get('sending_create/{id}', [SendingController::class, 'create'])->name('sending_create');
    Route::get('sending_labour/{id}', [LabourManagementController::class, 'sendingLabour'])->name('sending_labour');
    Route::post('remove_from_sending/{id}', [LabourManagementController::class, 'removeFromSending'])->name('remove_from_sending');


    Route::get('passport_export', [PassportController::class, 'passportExport'])->name('passport_export');
    Route::get('contract_labour_passport_export/{id}', [LabourManagementController::class, 'contractLabourPassportExport'])->name('contract_labour_passport_export');
    Route::get('sending_labour_passport_export/{id}', [LabourManagementController::class, 'sendingLabourPassportExport'])->name('sending_labour_passport_export');


    Route::resource('township', TownshipController::class);
    Route::get('get_by_region_id/{id}', [TownshipController::class, 'getByRegionId'])->name('get_by_region_id');
    Route::resource('members_list', MembersListsController::class);


    Route::resource('file_management', FileManagementController::class);
    Route::get('file_upload_view_demand/{id}', [FileManagementController::class, 'fileUploadViewDemand'])->name('file_upload_view_demand');
    Route::get('file_upload_view_contract/{id}', [FileManagementController::class, 'fileUploadViewContract'])->name('file_upload_view_contract');
    Route::get('file_upload_view_sending/{id}', [FileManagementController::class, 'fileUploadViewSending'])->name('file_upload_view_sending');


    Route::resource('labour_docs', LabourDocsController::class);
    Route::get('labour_docs_management/{id}', [LabourDocsController::class, 'labourDocsManagement'])->name('labour_docs_management');


    Route::resource('labour_payment', LabourPaymentController::class);
    Route::get('labour_payment_files/{id}', [LabourPaymentController::class, 'labourPaymentFiles'])->name('labour_payment_files');
    Route::post('labour_payment_file_upload', [LabourPaymentController::class, 'labourPaymentFileUpload'])->name('labour_payment_file_upload');

    Route::resource('role', RoleController::class);
    Route::resource('permission', PermissionController::class);
    Route::resource('nrc', NrcController::class);
    Route::get('get_nrc_by_code/{id}', [NrcController::class, 'getByNrcCode'])->name('get_nrc_by_code');
    Route::resource('hospital', HospitalController::class);

    Route::resource('medical_test', MedicalTestController::class);
    Route::get('add_medical_test_temp_list', [MedicalTestController::class, 'addMedicalTestTempList'])->name('add_medical_test_temp_list');

    Route::resource('passport_datatable', PassportDatatableController::class);
    Route::get('get_passport_datatable', [PassportDatatableController::class, 'index'])->name('get_passport_datatable');
});
