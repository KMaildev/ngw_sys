<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0">
    <div class="container-xxl d-flex h-100">

        <ul class="menu-inner">
            <li class="menu-item">
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
                        <a href="{{ route('overseas_agent.index') }}" class="menu-link">
                            Overseas Agent
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('users.index') }}" class="menu-link">
                            Users
                        </a>
                    </li>
                </ul>
            </li>

            <li class="menu-item">
                <a href="{{ route('agent_list.index') }}" class="menu-link">
                    <i class="menu-icon fa fa-user"></i>
                    Agent Lists
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('passport.index') }}" class="menu-link">
                    <i class="menu-icon fa-solid fa-passport"></i>
                    Passport
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('reject_passport_list') }}" class="menu-link">
                    <i class="menu-icon fa fa-x"></i>
                    Reject Passport
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('demand.index') }}" class="menu-link">
                    <i class="menu-icon fa fa-file"></i>
                    Demand
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('contract.index') }}" class="menu-link">
                    <i class="menu-icon fa fa-file-pen"></i>
                    Contract
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('sending.index') }}" class="menu-link">
                    <i class="menu-icon fa-sharp fa-solid fa-paper-plane"></i>
                    Sending
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('elfinder.index') }}" class="menu-link">
                    <i class="menu-icon fa-solid fa-folder"></i>
                    File Manager
                </a>
            </li>

        </ul>

    </div>
</aside>
