<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0">
    <div class="container-xxl d-flex h-100">

        <ul class="menu-inner">
            <li class="menu-item" hidden>
                <a href="{{ route('home') }}" class="menu-link">
                    <i class="menu-icon fa fa-home"></i>
                    Dashboards
                </a>
            </li>

            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <i class="menu-icon fa-sharp fa-solid fa-gear"></i>
                    Configuration
                </a>
                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('country.index') }}" class="menu-link">
                            Country
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="{{ route('users.index') }}" class="menu-link">
                            Users
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="{{ route('role.index') }}" class="menu-link">
                            Role
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="{{ route('permission.index') }}" class="menu-link">
                            Permission
                        </a>
                    </li>

                </ul>
            </li>


            @can('overseas_agent')
                <li class="menu-item">
                    <a href="{{ route('overseas_agent.index') }}" class="menu-link">
                        <i class="menu-icon fa fa-users"></i>
                        Overseas Agent
                    </a>
                </li>
            @endcan

            @can('agent_lists')
                <li class="menu-item">
                    <a href="{{ route('agent_list.index') }}" class="menu-link">
                        <i class="menu-icon fa fa-user"></i>
                        Agent Lists
                    </a>
                </li>
            @endcan


            @can('labour_manage')
                <li class="menu-item">
                    <a href="javascript:void(0)" class="menu-link menu-toggle">
                        <i class="menu-icon fa-sharp fa-solid fa-gear"></i>
                        Labour Manage
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="{{ route('passport.index') }}" class="menu-link">
                                Labours
                            </a>
                        </li>


                        <li class="menu-item">
                            <a href="{{ route('reject_passport_list') }}" class="menu-link">
                                Reject
                            </a>
                        </li>

                    </ul>
                </li>
            @endcan


            @can('labour_payment')
                <li class="menu-item">
                    <a href="{{ route('labour_payment.index') }}" class="menu-link">
                        <i class="menu-icon fa fa-credit-card"></i>
                        Labour Payment
                    </a>
                </li>
            @endcan


            @can('demand')
                <li class="menu-item">
                    <a href="{{ route('demand.index') }}" class="menu-link">
                        <i class="menu-icon fa fa-file"></i>
                        Demand
                    </a>
                </li>
            @endcan

            @can('contract')
                <li class="menu-item">
                    <a href="{{ route('contract.index') }}" class="menu-link">
                        <i class="menu-icon fa fa-file-pen"></i>
                        Contract
                    </a>
                </li>
            @endcan

            @can('contract')
                <li class="menu-item">
                    <a href="{{ route('sending.index') }}" class="menu-link">
                        <i class="menu-icon fa-sharp fa-solid fa-paper-plane"></i>
                        Sending
                    </a>
                </li>
            @endcan

            @can('file_manager')
                <li class="menu-item">
                    <a href="{{ route('elfinder.index') }}" class="menu-link">
                        <i class="menu-icon fa-solid fa-folder"></i>
                        File Manager
                    </a>
                </li>
            @endcan

        </ul>

    </div>
</aside>
