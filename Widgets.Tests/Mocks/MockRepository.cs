﻿using Widgets.Data;

namespace Widgets.Tests.Mocks
{
    public class MockRepository : IRepository
    {
        public IOrderRepository Orders
        {
            get
            {
                return new MockOrderRepository();
            }
        }

        public IWidgetRepository Widgets
        {
            get
            {
                return new MockWidgetRepository();
            }
        }
    }
}